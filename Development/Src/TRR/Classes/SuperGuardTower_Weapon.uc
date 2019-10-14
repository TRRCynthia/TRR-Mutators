
class SuperGuardTower_Weapon extends Rx_Defence_GuardTower_Weapon;


DefaultProperties
{
    ShotCost(0)=0
    ShotCost(1)=0
     
    VehicleClass=Class'SuperGuardTower'

    FireInterval(0)=0.05
    FireInterval(1)=0.05

    Spread(0)=0.001
    Spread(1)=0.001
		

	
	WeaponFireTypes(0)=EWFT_Projectile
	WeaponFireTypes(1)=EWFT_Projectile 
	
	WeaponProjectiles(0)=class'Rx_Vehicle_A10_GattlingGun'
	WeaponProjectiles(1)=class'Rx_Vehicle_A10_GattlingGun' 

 //   WeaponFireTypes(0)   = EWFT_InstantHit
 //   WeaponFireTypes(1)   = EWFT_InstantHit


}
