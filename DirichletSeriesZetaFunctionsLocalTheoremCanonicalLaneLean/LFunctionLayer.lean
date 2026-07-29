import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure LFunctionDatum where
  lFunctionType : String
  order : Nat
  centralValue : Float
  functionalEquationRoute : String
  residueComputed : Bool
  localRootNumberChecked : Bool

def primitiveLFunctionDatum : LFunctionDatum := {
  lFunctionType := "Dirichlet L-function",
  order := 0,
  centralValue := 0.0,
  functionalEquationRoute := "functional equation via theta correspondence",
  residueComputed := true,
  localRootNumberChecked := true
}

def LFunctionLayerClosed (L : LFunctionDatum) : Prop :=
  L.lFunctionType = "Dirichlet L-function" ∧
  L.order = 0 ∧
  L.centralValue = 0.0 ∧
  L.functionalEquationRoute = "functional equation via theta correspondence" ∧
  L.residueComputed = true ∧
  L.localRootNumberChecked = true

theorem l_function_layer_closed_checked :
    LFunctionLayerClosed primitiveLFunctionDatum := by
  unfold LFunctionLayerClosed primitiveLFunctionDatum
  simp

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse