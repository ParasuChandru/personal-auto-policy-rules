// File: rules/policy/PersonalAuto/Driver/ValidateMinimumAge.gsx

package rules.policy.PersonalAuto.Driver

uses gw.api.validation.ValidationException
uses gw.i18n.DisplayKey

rule ValidateMinimumAge when
  this.Age != null && this.Age < 18
then
  throw new ValidationException(DisplayKey.get("PersonalAuto.Driver.MinAge.Error"))
end
