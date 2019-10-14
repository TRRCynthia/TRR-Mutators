class TRR_GroundAADef extends Rx_Mutator;

function bool CheckReplacement(Actor Other)
{
   if (Rx_Defence_SAMSite(Other) != None || Rx_Defence_AATower(Other) != None)
    {
            Rx_Defence(Other).DefenceControllerClass=class'SuperSSController';
    }
    if(String(Other.Class) == "Rx_Defence_Turret")
    {
        // Replace Turrets with LaserTurrets
        Other.Destroy();
        ReplaceWith(Other, "TRR.LaserTurret");
    }
    if(String(Other.Class) == "Rx_Defence_GuardTower_Nod")
    {
        // Replace GuardTowers with LaserGuardTowers
        Other.Destroy();
        ReplaceWith(Other, "TRR.LaserGT");
    }
    if(String(Other.Class) == "Rx_Defence_SAMSite_Weapon")
    {
        Rx_Defence_SAMSite_Weapon(Other).WeaponProjectiles[0]=Class'SAMGround_Projectile';
        Rx_Defence_SAMSite_Weapon(Other).WeaponProjectiles[1]=Class'SAMGround_Projectile';
    }
    if(String(Other.Class) == "Rx_Defence_AATower_Weapon")
    {
        Rx_Defence_AATower_Weapon(Other).WeaponProjectiles[0]=Class'AAGround_Projectile';
        Rx_Defence_AATower_Weapon(Other).WeaponProjectiles[1]=Class'AAGround_Projectile';
    }


    return true;
}

/*reliable server function NoArmor()
{
	local Rx_Building_Team_Internals BuildingInternals;

	ForEach `WorldInfoObject.AllActors(class'Rx_Building_Team_Internals', BuildingInternals)
	{
		BuildingInternals.Armor=BuildingInternals.HealthMax;
		BuildingInternals.Health=0;
	}

}*/