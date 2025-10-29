# Personal Auto Policy Rules (Guidewire PolicyCenter)

## Overview
This repository contains Gosu business rules for Guidewire PolicyCenter, focused on Personal Auto driver eligibility and rating:
- **Validation**: Prohibits adding drivers under 18 years old
- **Surcharge**: Applies a 10% surcharge for drivers under 25 (if fields exist on Driver entity)

## Contents
- `rules/policy/PersonalAuto/Driver/ValidateMinimumAge.gsx`: Validation rule
- `rules/policy/PersonalAuto/Driver/ApplyYoungDriverSurcharge.gsx`: Surcharge rule (use only if Driver entity supports these fields)
- `config/display.properties`: Localized error message

## Usage
1. Place these files in their respective PolicyCenter module folders.
2. For rating, prefer using Guidewire's Rating Engine routines unless custom Driver fields are used.

## Localization
Error messages are externalized in `display.properties` for i18n support.

## Notes
- If calculating surcharges, it's preferable to do so in rate routines, unless project structure supports premium fields directly on the Driver entity.

---
