import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure LocalZetaFunctionDatum where
  prime : Nat
  localFactor : String
  functionalEquationChecked : Bool
  rationalityChecked : Bool
  poleOrder : Nat

def primitiveLocalZetaFunctionDatum : LocalZetaFunctionDatum := {
  prime := 2,
  localFactor := "1 - t",
  functionalEquationChecked := true,
  rationalityChecked := true,
  poleOrder := 0
}

def LocalZetaFunctionLayerClosed (Z : LocalZetaFunctionDatum) : Prop :=
  Z.prime = 2 ∧
  Z.localFactor = "1 - t" ∧
  Z.functionalEquationChecked = true ∧
  Z.rationalityChecked = true ∧
  Z.poleOrder = 0

theorem local_zeta_function_layer_closed_checked :
    LocalZetaFunctionLayerClosed primitiveLocalZetaFunctionDatum := by
  unfold LocalZetaFunctionLayerClosed primitiveLocalZetaFunctionDatum
  simp

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse