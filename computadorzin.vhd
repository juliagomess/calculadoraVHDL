LIBRARY work;
USE work.MyPackage.all;

ENTITY computadorzin IS
END ENTITY;

ARCHITECTURE computadorzin_arch OF computadorzin IS 
	SIGNAL A, B, SB, SUM, COUT: BIT_VECTOR (3 DOWNTO 0);
	SIGNAL CIN : BIT; 
	SIGNAL NA, NB, NR: BIT_VECTOR (6 DOWNTO 0);
BEGIN 
	num1 : Decoder PORT MAP (A,NA);
	num2 : Decoder PORT MAP (B,NB);

	mult0 : Mux2x1 PORT MAP (B(0),CIN,SB(0));
	mult1 : Mux2x1 PORT MAP (B(1),CIN,SB(1));
	mult2 : Mux2x1 PORT MAP (B(2),CIN,SB(2));
	mult3 : Mux2x1 PORT MAP (B(3),CIN,SB(3));
	
	soma0 : somador PORT MAP (A(0),SB(0),CIN,COUT(0),SUM(0));
	soma1 : somador PORT MAP (A(1),SB(1),COUT(0),COUT(1),SUM(1));
	soma2 : somador PORT MAP (A(2),SB(2),COUT(1),COUT(2),SUM(2));
	soma3 : somador PORT MAP (A(3),SB(3),COUT(2),COUT(3),SUM(3));
	
	num3 : Decoder PORT MAP (SUM,NR);
	
	A <= "0011" AFTER 0ns,
		  "0100" AFTER 10ns;
		  
	B <= "0001" AFTER 0ns,
		  "0011" AFTER 10ns;
	
	CIN <= '1' AFTER 0ns,
			 '0' AFTER 10ns;
	
END ARCHITECTURE;