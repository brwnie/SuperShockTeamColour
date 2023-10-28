//=============================================================================
// InstaGibTechnicolour.
// The ultimate skill test.
//=============================================================================

class InstaGibTeamColour expands Arena;

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	if ( Other.IsA('TournamentHealth') || Other.IsA('UT_Shieldbelt')
		|| Other.IsA('Armor2') || Other.IsA('ThighPads')
		|| Other.IsA('UT_Invisibility') || Other.IsA('UDamage') )
		return false;

	return Super.CheckReplacement( Other, bSuperRelevant );
/*
	if ( Other.IsA('Weapon') )
		if ((WeaponString != "") && !Other.IsA(WeaponName))
			return false;

	if ( Other.IsA('Ammo') )
	{
		if ((AmmoString != "") && !Other.IsA(AmmoName))
			ReplaceWith(Other, AmmoString);
		return false;
	}

	bSuperRelevant = 0;
	return true;
*/
}

defaultproperties
{
      WeaponName="SuperShockTechniColourRifle"
      AmmoName="SuperShockTechniCore"
      DefaultWeapon=Class'SuperShockTeamColour.SuperShockTechniColourRifle'
}