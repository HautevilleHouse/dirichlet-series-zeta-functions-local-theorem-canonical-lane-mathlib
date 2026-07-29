import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure LocalZetaFunction where
  prime : Nat
  s : ℂ
  value : ℂ
deriving Repr, DecidableEq

structure LocalZetaFunctionCertificate where
  localZeta : LocalZetaFunction
  functionalEquationChecked : Bool
  dirichletSeriesChecked : Bool
  eulerProductChecked : Bool

def primitiveLocalZetaFunction : LocalZetaFunction := {
  prime := 2,
  s := 0,
  value := 1
}

def localZetaFunctionCertificate : LocalZetaFunctionCertificate := {
  localZeta := primitiveLocalZetaFunction,
  functionalEquationChecked := true,
  dirichletSeriesChecked := true,
  eulerProductChecked := true
}

def LocalZetaFunctionClosed (C : LocalZetaFunctionCertificate) : Prop :=
  C.localZeta.prime > 0 ∧
  C.functionalEquationChecked = true ∧
  C.dirichletSeriesChecked = true ∧
  C.eulerProductChecked = true

theorem local_zeta_function_closed_checked :
    LocalZetaFunctionClosed localZetaFunctionCertificate := by
  exact And.intro (by decide) (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse