ENTITY somador IS
	PORT (
		A : IN BIT;
		B : IN BIT;
		CIN : IN BIT;
		COUT : OUT BIT;
		S : OUT BIT
	);
END ENTITY;
 
ARCHITECTURE somador_ARCH OF somador IS 
	SIGNAL NA :BIT;
	SIGNAL NB :BIT;
	SIGNAL NCIN :BIT;
BEGIN 
	NA <= NOT A;
	NB <= NOT B;
	NCIN <= NOT CIN;

	S<=( NA AND NB AND CIN ) OR ( NA AND B AND NCIN) OR ( A AND B AND CIN) OR ( A AND NB AND NCIN);
	COUT<= ( B AND CIN) OR (A AND CIN) OR (A AND B);

END ARCHITECTURE;