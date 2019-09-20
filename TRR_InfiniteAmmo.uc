class TRR_InfiniteAmmo extends Rx_Mutator;

function bool CheckReplacement(Actor Other)
{
    if (Rx_Weapon(Other) != None)
    {
       if (Rx_PRI(Rx_Weapon(Other).Instigator.PlayerReplicationInfo).bAdmin)
        {
            ZeroShotCost(Rx_Weapon(Other));
            `log("IT DID IT");
        }
    }

/*    if (Rx_PRI(Other).Instigator.PlayerReplicationInfo.bAdmin)
    {
         Pawn(Other).CreateInventory(class'TRR.SuperRepairGun');
         Pawn(Other).CreateInventory(class'TRR.obygun');     
    }*/
    return true;
}

reliable client function ZeroShotCost(Rx_Weapon Wp)
{
    Wp.ShotCost[0] = 0;
    Wp.ShotCost[1] = 0;
	Wp.bHasInfiniteAmmo = true;
	Wp.MaxSpread = 0.1;
    `log(Wp.ShotCost[0]);
}
