class LensFlareComponent_X extends LensFlareComponent
native;

var() RawDistributionFloat AlphaOverTime;
var() RawDistributionVector ColorOverTime;
var() array<LensFlareFloatParamCurve> MaterialFloatParamValuesOverTime;
var() const name SourceColorParamName;
var() const name SourceColorAlphaParamName;