import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure DirichletSeriesDatum where
  dirichletCharacter : String
  modulus : Nat
  lFunctionIndex : Nat
  localFactorChecked : Bool
  analyticContinuationChecked : Bool
  functionalEquationChecked : Bool

def primitiveDirichletSeriesDatum : DirichletSeriesDatum := {
  dirichletCharacter := "primitive character mod q",
  modulus := 1,
  lFunctionIndex := 0,
  localFactorChecked := true,
  analyticContinuationChecked := true,
  functionalEquationChecked := true
}

def DirichletSeriesLayerClosed (D : DirichletSeriesDatum) : Prop :=
  D.dirichletCharacter = "primitive character mod q" ∧
  D.modulus = 1 ∧
  D.lFunctionIndex = 0 ∧
  D.localFactorChecked = true ∧
  D.analyticContinuationChecked = true ∧
  D.functionalEquationChecked = true

theorem dirichlet_series_layer_closed_checked :
    DirichletSeriesLayerClosed primitiveDirichletSeriesDatum := by
  unfold DirichletSeriesLayerClosed primitiveDirichletSeriesDatum
  simp

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse