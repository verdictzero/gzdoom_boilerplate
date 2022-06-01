class Experience : Inventory
{
	Default
	{
		+COUNTITEM
		Inventory.Amount 10;
		+Inventory.ALWAYSPICKUP
		Inventory.PickupSound "misc/ammo_pkup";
	}

	override bool TryPickup (in out Actor toucher)
	{
		toucher.totalexp += Amount;
		GoAwayAndDie();
		return true;
	}
}

