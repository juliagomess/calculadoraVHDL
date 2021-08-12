PACKAGE MyPackage IS
	COMPONENT somador
		PORT (
			A : IN BIT;
			B : IN BIT;
			CIN : IN BIT;
			COUT : OUT BIT;
			S : OUT BIT
		);
	END COMPONENT;
	
	COMPONENT Decoder 
		PORT (
			INPUT : IN BIT_VECTOR(3 DOWNTO 0);
			OUTPUT : OUT BIT_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT Mux2x1 
		 PORT (
			A : IN BIT;
			S : IN BIT;
			X : OUT BIT
		 );
	END COMPONENT;

END MyPackage;