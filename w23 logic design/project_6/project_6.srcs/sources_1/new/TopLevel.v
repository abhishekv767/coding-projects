module TopLevel(
    input btnU, 
    input btnD, 
    input btnC,  
    input btnR,  
    input btnL,  
    input clkin, 
    output [6:0] seg, 
    output dp, 
    output [3:0] an,
    output [3:0] vgaBlue,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,        
    output Vsync, 
    output Hsync, 
    input [15:0] sw, 
    output [15:0] led
    );
    
    //wires
    wire clk, digsel;
    wire frame, frame2;
    wire resetH, resetV, ActiveRegion;
    wire [9:0] countH, countV;
    wire resetHmove, resetVmove; 
    wire [9:0]hPos;
    wire [9:0]vPos;    
    wire [3:0]border; 
    wire [3:0]ground; 
    wire [3:0]grass;
    wire [3:0]player;
    wire [3:0]ship;
    wire [3:0]slug;
    wire [9:0]hPosRight;
    wire [9:0]vPosBottom;
    wire scoreUp;
    wire [5:0]D;
    wire [3:0]ship2;
    wire [3:0]slug2;
    wire [3:0]ship3;
    wire [3:0]slug3;
    wire [3:0]ship4;
    wire [3:0]slug4;
    wire [3:0]ship5;
    wire [3:0]slug5;
    wire shipResetTimer;
    wire [5:0]shipD;
    wire shipReset;
    
    
    //given
    labVGA_clks not_so_slow (.clkin(clkin), .greset(btnU), .clk(clk), .digsel(digsel));
    
    //button synchronizers
    wire BTNC, BTNU, BTNR, BTNL, BTND;
    FDRE #(.INIT()) sync1 (.C(clk), .CE(1'b1), .D(btnD), .Q(BTND));
    FDRE #(.INIT()) sync2 (.C(clk), .CE(1'b1), .D(btnL), .Q(BTNL));
    FDRE #(.INIT()) sync3 (.C(clk), .CE(1'b1), .D(btnR), .Q(BTNR));
    FDRE #(.INIT()) sync4 (.C(clk), .CE(1'b1), .D(btnU), .Q(BTNU));
    FDRE #(.INIT()) sync5 (.C(clk), .CE(1'b1), .D(btnC), .Q(BTNC));

    //time counter & frame 
    wire [9:0]timeCount;
    wire resetTimer;
    wire oneSec, threeSec;
    edgeDetector frameEdge (.clk(clk), .in(Vsync), .edgeOut(frame));
    edgeDetector frameEdge2 (.clk(clk), .in(frame), .edgeOut(frame2));
//    Time_Counter timeCounter(.clk(clk), .CE(frame), .R(resetTimer), .Q(timeCount));
//    assign oneSec  = timeCount[6] & ~timeCount[5] & ~timeCount[4] & ~timeCount[3] & ~timeCount[2] & ~timeCount[1] & ~timeCount[0]; 
    //assign threeSec = ~|(timeCount ^ 10'd192);
    Time_Counter timeCounter(.clk(clk), .Up(frame), .reset(resetTimer | shipResetTimer), .Dw(1'b0), .Din(16'd0), .Q(timeCount));
    assign oneSec  = ~|(timeCount ^ 10'd64); 
    assign threeSec = ~|(timeCount ^ 10'd192);
    
    //reset condition
    assign resetH = ~|(countH ^ 10'd799);
    assign resetV = ~|(countV ^ 10'd524) & resetH;
    
    //10 bit counters
    countU16DL Horizontal(.clk(clk), .Up(1'b1), .LD(resetH), .Dw(1'b0), .Din(16'd0), .Q(countH));
    countU16DL Vertical(.clk(clk), .Up(resetH), .LD(resetV), .Dw(1'b0), .Din(16'd0), .Q(countV));
    assign Hsync = (countH < 10'd655) || (countH > 10'd750); 
    assign Vsync = (countV < 10'd489) || (countV > 10'd490);
    assign ActiveRegion = (countH <= 10'd639) && (countV <= 10'd479); 
    
    //random number generator
    wire [7:0]SPG;
    wire [7:0]SWG;
    LSFR shipPositionGenerator(.clk(clk), .CE(1'b1), .out(SPG));
    LSFR shipWidthGenerator(.clk(clk), .CE(1'b1), .out(SWG));
    
    //target size for ship 1
    wire [2:0] shipWidthT;
    wire [3:0] shipPosT; 
    wire loadTarget;
    Target shipPosition(.clk(clk), .CE(loadTarget), .D(SPG[3:0]), .Q(shipPosT));
    Target shipWidth(.clk(clk), .CE(loadTarget), .D(SWG[2:0]), .Q(shipWidthT));
    
    //target size for ship 2
    wire [2:0] shipWidthT2;
    wire [3:0] shipPosT2; 
    Target shipPosition2(.clk(clk), .CE(loadTarget), .D(SPG[4:1]), .Q(shipPosT2));
    Target shipWidth2(.clk(clk), .CE(loadTarget), .D(SWG[3:1]), .Q(shipWidthT2));
    
    //target size for ship
    wire [2:0] shipWidthT3;
    wire [3:0] shipPosT3; 
    Target shipPosition3(.clk(clk), .CE(loadTarget), .D(SPG[5:2]), .Q(shipPosT3));
    Target shipWidth3(.clk(clk), .CE(loadTarget), .D(SWG[4:2]), .Q(shipWidthT3));
    
    //target size for ship
    wire [2:0] shipWidthT4;
    wire [3:0] shipPosT4; 
    Target shipPosition4(.clk(clk), .CE(loadTarget), .D(SPG[6:3]), .Q(shipPosT4));
    Target shipWidth4(.clk(clk), .CE(loadTarget), .D(SWG[5:3]), .Q(shipWidthT4));
    
    //target size for ship
    wire [2:0] shipWidthT5;
    wire [3:0] shipPosT5; 
    Target shipPosition5(.clk(clk), .CE(loadTarget), .D(SPG[7:4]), .Q(shipPosT5));
    Target shipWidth5(.clk(clk), .CE(loadTarget), .D(SWG[6:4]), .Q(shipWidthT5));
    
    //ship 1 controller
    wire [9:0]shipVpos;
    wire [9:0]shipVposBottom;
    assign shipVposBottom = shipVpos + 10'd10;
    countU16DL shipVmove(.clk(frame|frame2), .Up(((shipD[1]|D[1]) & ~(shipVposBottom + 10'd8 >= 10'd400)) & ~D[5]), .reset(sw[0]|shipReset), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q(shipVpos));    
    assign ship = {4{((countV >= (shipVpos + 10'd8)) & (countV <= (shipVposBottom + 10'd8))) & ((countH >= (10'd32 * shipPosT)) & (countH <= ((10'd32 * shipPosT) + (10'd32 * shipWidthT))))}};
    
    //ship 2 controller
    wire [9:0]shipVpos2;
    wire [9:0]shipVposBottom2;
    assign shipVposBottom2 = shipVpos2 + 10'd10;
    countU16DL shipVmove2(.clk(frame|frame2), .Up(((shipD[2]) & ~(shipVposBottom2 + 10'd8 >= 10'd400)) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q(shipVpos2));    
    assign ship2 = {4{((countV >= (shipVpos2 + 10'd8)) & (countV <= (shipVposBottom2 + 10'd8))) & ((countH >= (10'd32 * shipPosT2)) & (countH <= ((10'd32 * shipPosT2) + (10'd32 * shipWidthT2))))}};
    
    //ship 3 controller
    wire [9:0]shipVpos3;
    wire [9:0]shipVposBottom3;
    assign shipVposBottom3 = shipVpos3 + 10'd10;
    countU16DL shipVmove3(.clk(frame|frame2), .Up(((shipD[3]) & ~(shipVposBottom3 + 10'd8 >= 10'd400)) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q(shipVpos3));    
    assign ship3 = {4{((countV >= (shipVpos3 + 10'd8)) & (countV <= (shipVposBottom3 + 10'd8))) & ((countH >= (10'd32 * shipPosT3)) & (countH <= ((10'd32 * shipPosT3) + (10'd32 * shipWidthT3))))}};
    
    //ship 4 controller
    wire [9:0]shipVpos4;
    wire [9:0]shipVposBottom4;
    assign shipVposBottom4 = shipVpos4 + 10'd10;
    countU16DL shipVmove4(.clk(frame|frame2), .Up(((shipD[4]) & ~(shipVposBottom4 + 10'd8 >= 10'd400)) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q(shipVpos4));    
    assign ship4 = {4{((countV >= (shipVpos4 + 10'd8)) & (countV <= (shipVposBottom4 + 10'd8))) & ((countH >= (10'd32 * shipPosT4)) & (countH <= ((10'd32 * shipPosT4) + (10'd32 * shipWidthT4))))}};
    
    //ship 5 controller
    wire [9:0]shipVpos5;
    wire [9:0]shipVposBottom5;
    assign shipVposBottom5 = shipVpos5 + 10'd10;
    countU16DL shipVmove5(.clk(frame|frame2), .Up(((shipD[5]) & ~(shipVposBottom5 + 10'd8 >= 10'd400)) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q(shipVpos5));    
    assign ship5 = {4{((countV >= (shipVpos5 + 10'd8)) & (countV <= (shipVposBottom5 + 10'd8))) & ((countH >= (10'd32 * shipPosT5)) & (countH <= ((10'd32 * shipPosT5) + (10'd32 * shipWidthT5))))}};
    
    
    //Slug 1 Controller
    wire [9:0]pSlugVposBottom;
    wire [9:0]pSlugLeftEdge;
    wire [9:0]pSlugRightEdge;
    assign pSlugLeftEdge = (((10'd32 * shipPosT) + ((10'd32 * shipWidthT)/2)));
    assign pSlugRightEdge = pSlugLeftEdge + 10'd10;
    assign pSlugVposBottom = shipVpos + 10'd10;
    countU16DL pSlugMove(.clk(frame), .Up((sw[1]|(D[1]|D[2])) & ~(shipVposBottom + 10'd8 >= 10'd400) & ~D[5]), .LD(shipReset), .Dw(1'b0), .Din(16'd0), .Q());    
    assign slug = {4{((countV >= (shipVpos + 10'd8)) & (countV <= (shipVposBottom + 10'd8))) & ((countH >= pSlugLeftEdge) & (countH <= (pSlugRightEdge)))}};
    
    //Slug 2 Controller
    wire [9:0]pSlugVposBottom2;
    wire [9:0]pSlugLeftEdge2;
    wire [9:0]pSlugRightEdge2;
    assign pSlugLeftEdge2 = (((10'd32 * shipPosT2) + ((10'd32 * shipWidthT2)/2)));
    assign pSlugRightEdge2 = pSlugLeftEdge2 + 10'd10;
    assign pSlugVposBottom2 = shipVpos2 + 10'd10;
    countU16DL pSlugMove2(.clk(frame), .Up((D[1]|D[2]) & ~(shipVposBottom2 + 10'd8 >= 10'd400) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q());    
    assign slug2 = {4{((countV >= (shipVpos2 + 10'd8)) & (countV <= (shipVposBottom2 + 10'd8))) & ((countH >= pSlugLeftEdge2) & (countH <= (pSlugRightEdge2)))}};
    
    //Slug 3 Controller
    wire [9:0]pSlugVposBottom3;
    wire [9:0]pSlugLeftEdge3;
    wire [9:0]pSlugRightEdge3;
    assign pSlugLeftEdge3 = (((10'd32 * shipPosT3) + ((10'd32 * shipWidthT3)/2)));
    assign pSlugRightEdge3 = pSlugLeftEdge3 + 10'd10;
    assign pSlugVposBottom3 = shipVpos3 + 10'd10;
    countU16DL pSlugMove3(.clk(frame), .Up((D[1]|D[2]) & ~(shipVposBottom3 + 10'd8 >= 10'd400) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q());    
    assign slug3 = {4{((countV >= (shipVpos3 + 10'd8)) & (countV <= (shipVposBottom3 + 10'd8))) & ((countH >= pSlugLeftEdge3) & (countH <= (pSlugRightEdge3)))}};
    
    //Slug 4 Controller
    wire [9:0]pSlugVposBottom4;
    wire [9:0]pSlugLeftEdge4;
    wire [9:0]pSlugRightEdge4;
    assign pSlugLeftEdge4 = (((10'd32 * shipPosT4) + ((10'd32 * shipWidthT4)/2)));
    assign pSlugRightEdge4 = pSlugLeftEdge4 + 10'd10;
    assign pSlugVposBottom4 = shipVpos4 + 10'd10;
    countU16DL pSlugMove4(.clk(frame), .Up((D[1]|D[2]) & ~(shipVposBottom4 + 10'd8 >= 10'd400) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q());    
    assign slug4 = {4{((countV >= (shipVpos4 + 10'd8)) & (countV <= (shipVposBottom4 + 10'd8))) & ((countH >= pSlugLeftEdge4) & (countH <= (pSlugRightEdge4)))}};
    
    //Slug 5 Controller
    wire [9:0]pSlugVposBottom5;
    wire [9:0]pSlugLeftEdge5;
    wire [9:0]pSlugRightEdge5;
    assign pSlugLeftEdge5 = (((10'd32 * shipPosT5) + ((10'd32 * shipWidthT5)/2)));
    assign pSlugRightEdge5 = pSlugLeftEdge5 + 10'd10;
    assign pSlugVposBottom5 = shipVpos5 + 10'd10;
    countU16DL pSlugMove5(.clk(frame), .Up((D[1]|D[2]) & ~(shipVposBottom5 + 10'd8 >= 10'd400) & ~D[5]), .LD(1'b0), .Dw(1'b0), .Din(16'd0), .Q());    
    assign slug5 = {4{((countV >= (shipVpos5 + 10'd8)) & (countV <= (shipVposBottom5 + 10'd8))) & ((countH >= pSlugLeftEdge5) & (countH <= (pSlugRightEdge5)))}};
    
    //player controller
    countU16DL playerHmove(.clk(frame), .Up(btnR & ~BTND & ~(hPosRight + 10'd300 >= 10'd631) & ~(vPosBottom > 10'd383)), .LD(1'b0), .Dw(btnL & ~BTND & ~(hPos + 10'd300 <= 10'd8)), .Din(16'd0), .Q(hPos));
    countU16DL playerVmove(.clk(frame), .Up(btnD & ~(vPosBottom + 10'd383 >= 10'd471)), .LD(1'b0), .Dw(1'b1 & ~btnD & ~(vPos+ 10'd383 <= 10'd384)), .Din(16'd0), .Q(vPos));    
    assign player = {4{((countV >= (vPos + 10'd383)) & (countV <= (vPosBottom + 10'd383))) & ((countH >= (10'd300 + hPos)) & (countH <= (10'd300 + hPosRight)))}};
    
    //defining non-moving objects
    assign hPosRight = hPos + 10'd16;
    assign vPosBottom = vPos + 10'd16;
    assign border =  {4{((countH <= 10'd8) | (countV <= 10'd8) | (countH >= 10'd631) | (countV >= 10'd471))}};
    assign ground = {4{((countV >= 10'd408) & (countV <= 10'd471)) & ((countH >= 10'd8) & (countH <= 10'd631))}};
    assign grass = {4{((countV >= 10'd400) & (countV <= 10'd408)) & ((countH >= 10'd8) & (countH <= 10'd631))}};
                       
    //colors
    wire [9:0] fO; 
    wire flashGo, slugFlash;
    countU16DL flash(.clk(clk), .Up(frame), .LD(1'b0), .Dw(1'b0), .Din(15'd0), .Q(fO));
    assign flashGo = (fO[5] | ~D[5]);   
    assign slugFlash = (fO[5] | ~D[4]);  
    assign vgaRed = {4{ActiveRegion}} & (({4{flashGo}} & border & 4'hF) | (ground & 4'h9) | (grass & 4'h0) | ({4{flashGo}} & player & 4'hE) | (({4{(D[1]|D[2])}}) & ship & 4'h0) | (({4{(D[1]|D[2])}}) & ship2 & 4'h0) | (ship3 & 4'h0) | (ship4 & 4'h0) | (ship5 & 4'h0) | (slug & 4'hF) | (slug2 & 4'hF) | (slug3 & 4'hF) | (slug4 & 4'hF) | (slug5 & 4'hF));
    assign vgaGreen = {4{ActiveRegion}} & (({4{flashGo}} & border & 4'h0) | (ground & 4'h6) | (grass & 4'hA) | ({4{flashGo}} & player & 4'hE) | (({4{(D[1]|D[2])}}) & ship & 4'h0) | (({4{(D[1]|D[2])}}) & ship2 & 4'h0) | (ship3 & 4'h0) | (ship4 & 4'h0) | (ship5 & 4'h0) | (slug & 4'h0) | (slug2 & 4'h0) | (slug3 & 4'h0) | (slug4 & 4'h0) | (slug5 & 4'h0));
    assign vgaBlue = {4{ActiveRegion}} & (({4{flashGo}} & border & 4'h0) | (ground & 4'hF) | (grass & 4'h0) | ({4{flashGo}} & player & 4'hE) | (({4{(D[1]|D[2])}}) & ship & 4'hF) | (({4{(D[1]|D[2])}}) & ship2 & 4'hF) | (ship3 & 4'hF) | (ship4 & 4'hF) | (ship5 & 4'hF) | (slug & 4'hF)| (slug2 & 4'hF)| (slug3 & 4'hF)| (slug4 & 4'hF)| (slug5 & 4'hF));
    
//    assign vgaRed = {4{ActiveRegion}} & (({4{flashGo}} & border & 4'hF) | (ground & 4'h9) | (grass & 4'h0) | ({4{flashGo}} & player & 4'hE) | (({4{(D[1]|D[2])}}) & ship & 4'h0) | (({4{(D[1]|D[2]|D[3])}}) & {4{slugFlash}} & slug & 4'hF));
//    assign vgaGreen = {4{ActiveRegion}} & (({4{flashGo}} & border & 4'h0) | (ground & 4'h6) | (grass & 4'hA) | ({4{flashGo}} & player & 4'hE) | (({4{(D[1]|D[2])}}) & ship & 4'h0) | (({4{(D[1]|D[2]|D[3])}}) & {4{slugFlash}} & slug & 4'h0));
//    assign vgaBlue = {4{ActiveRegion}} & (({4{flashGo}} & border & 4'h0) | (ground & 4'hF) | (grass & 4'h0) | ({4{flashGo}} & player & 4'hE) | (({4{(D[1]|D[2])}}) & ship & 4'hF) | (({4{(D[1]|D[2]|D[3])}}) & {4{slugFlash}} & slug & 4'hF));
    
        
    //Game State machine
    wire Go;
    edgeDetector start (.clk(digsel), .in(btnC), .edgeOut(Go));
    State_Machine smach(.clk(clk), 
                        .btnU(btnU), .go(BTNC),
                        .collisionPinkSlugWithPlayer(player & slug),
                        .collisionPinkSlugWithFloor(slug & grass), 
                        .collisionShipWithPlayer((ship) & player), 
                        .collisionShipWithFloor((ship) & grass),
                        .T1(oneSec), .T3(threeSec), 
                        .scoreUp(scoreUp), 
                        .loadTarget(loadTarget), 
                        .shipReset(shipReset),
                        .resetTimer(resetTimer), .states(D));
                        
    //Ship State Machine
    shipState_Machine shipState(.clk(clk), .go(BTNC), .T1(oneSec), 
                                .shipGo(), .resetTimer(shipResetTimer), 
                                .states(shipD),
                                .ship1floor(ship & grass),
                                .ship2floor(ship2 & grass),
                                .ship3floor(ship3 & grass),
                                .ship4floor(ship4 & grass),
                                .ship5floor(ship5 & grass));
    
    //score counter
    wire [9:0] score;
    countUD4L scoreCounter (.clk(clk), .Up(scoreUp), .Dw(1'b0), .reset(btnU | btnC), .LD(1'b0), .Din(4'b0000), .Q(score));
    
    //old modules
    wire [3:0]ringCounterOut;
    wire [3:0]selectorToHex7Seg;
    Ring_Counter ringCounter(.clk(clk), .Advance(digsel), .Q(ringCounterOut));
    Selector select(.sel(ringCounterOut), .N({score}), .H(selectorToHex7Seg));
    hex7seg sevenSegmentDisplay(.n(selectorToHex7Seg), .seg(seg));
    
    //an[] logic
    assign dp = 1'b1; 
    assign an[3] = 1'b1;
    assign an[2] = 1'b1;
    assign an[1] = ~(ringCounterOut[1]); 
    assign an[0] = ~(ringCounterOut[0]);
    
    //testing
    assign led[0] = shipReset;
    assign led[1] = shipD[0];
    assign led[2] = shipD[1];
    assign led[3] = shipD[2];
    assign led[4] = shipD[3];
    assign led[5] = shipD[4];
    assign led[6] = shipD[5];
    assign led[10] = D[0];
    assign led[11] = D[1];
    assign led[12] = D[2];
    assign led[13] = D[3];
    assign led[14] = D[4];
    assign led[15] = D[5];
      
endmodule