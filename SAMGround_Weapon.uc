/*********************************************************
*
* File: Rx_Defence_SAMSite_Weapon.uc
* Author: RenegadeX-Team
* Pojekt: Renegade-X UDK <www.renegade-x.com>
*
* Desc:
*
*
* ConfigFile:
*
*********************************************************
*
*********************************************************/
class SAMGround_Weapon extends Rx_Defence_SAMSite_Weapon;

DefaultProperties
{
    WeaponProjectiles(0) = Class'SAMGround_Projectile'
    WeaponProjectiles(1) = Class'SAMGround_Projectile'
}