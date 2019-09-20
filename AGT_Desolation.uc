class AGT_Desolation extends Rx_Mutator;

function bool CheckReplacement(Actor Other)
{
   if (Rx_Sentinel_AGT_Rockets_Base(Other) != None)
    {
            Rx_Sentinel_AGT_Rockets_Base(Other).DefaultWeaponClass=class'Rx_SentinelWeapon_AGT_RocketPod_Desolation';
 
    }
    return true;
}