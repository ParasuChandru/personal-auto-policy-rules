// File: rules/policy/PersonalAuto/Driver/ApplyYoungDriverSurcharge.gsx

package rules.policy.PersonalAuto.Driver

rule ApplyYoungDriverSurcharge when
  this.BasePremium != null && this.Age != null && this.Age < 25
then
  var base = this.BasePremium
  var surcharge = base * 0.10
  this.YoungDriverSurcharge = surcharge
  this.CalculatedPremium = base + surcharge
end

rule ClearYoungDriverSurcharge when
  this.BasePremium != null && this.Age != null && this.Age >= 25
then
  this.YoungDriverSurcharge = 0
  this.CalculatedPremium = this.BasePremium
end
