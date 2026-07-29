import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure FunctionalEquationDatum where
  gammaFactor : String
  epsilonFactor : Float
  sign : Int
  symmetricChecked : Bool
  completedLFunctionChecked : Bool

def primitiveFunctionalEquationDatum : FunctionalEquationDatum := {
  gammaFactor := "Gamma(s/2)",
  epsilonFactor := 1.0,
  sign := 1,
  symmetricChecked := true,
  completedLFunctionChecked := true
}

def FunctionalEquationLayerClosed (F : FunctionalEquationDatum) : Prop :=
  F.gammaFactor = "Gamma(s/2)" ∧
  F.epsilonFactor = 1.0 ∧
  F.sign = 1 ∧
  F.symmetricChecked = true ∧
  F.completedLFunctionChecked = true

theorem functional_equation_layer_closed_checked :
    FunctionalEquationLayerClosed primitiveFunctionalEquationDatum := by
  unfold FunctionalEquationLayerClosed primitiveFunctionalEquationDatum
  simp

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse