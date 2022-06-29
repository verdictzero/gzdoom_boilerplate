class Josh : Actor
{
	Default
	{
		Health 50;
		Radius 64;
		Height 64
		Mass 400;
		Speed 8;
		PainChance 128;
		Monster;
		+FLOAT +NOGRAVITY
		//SeeSound "caco/sight";
		//PainSound "caco/pain";
		//DeathSound "caco/death";
		//ActiveSound "caco/active";
		//Obituary "$OB_CACO";
		//HitObituary "$OB_CACOHIT";
		//Tag "$FN_CACO";
	}
	States
	{
	Spawn:
		JOSH A 0 A_Look;
		Loop;
	See:
		JOSH A 0 A_Chase;
		Loop;
	Missile:
		JOSH C 0 A_FaceTarget;
		JOSH D 0 A_FaceTarget;
		JOSH E 0 A_HeadAttack;
		Goto See;
	Pain:
		JOSH G 1;
		JOSH G 2;
		JOSH G 3;
		JOSH G 4;
		Goto See;
	Death:
		JOSH X 1;
		JOSH X 2;
		JOSH X 3;
		JOSH X 4;
		JOSH X 5;
		JOSH X 6;
		JOSH X 7;
		JOSH X 8;
		JOSH X 9;
		JOSH Y 0;
		JOSH Y 1;
		JOSH Y 2;
		JOSH Y 3;
		JOSH Y 4;
		Stop;
	}
}