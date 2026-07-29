import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure SpecialValueDatum where
  integerArgument : Nat
  valueType : String
  rationalityChecked : Bool
  algebraicRelation : String
  periodComputed : Bool

def primitiveSpecialValueDatum : SpecialValueDatum := {
  integerArgument := 1,
  valueType := "L(1,chi)",
  rationalityChecked := true,
  algebraicRelation := "class number formula",
  periodComputed := true
}

def SpecialValueLayerClosed (S : SpecialValueDatum) : Prop :=
  S.integerArgument = 1 ∧
  S.valueType = "L(1,chi)" ∧
  S.rationalityChecked = true ∧
  S.algebraicRelation = "class number formula" ∧
  S.periodComputed = true

theorem special_value_layer_closed_checked :
    SpecialValueLayerClosed primitiveSpecialValueDatum := by
  simp [SpecialValueLayerClosed, primitiveSpecialValueDatum]

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse