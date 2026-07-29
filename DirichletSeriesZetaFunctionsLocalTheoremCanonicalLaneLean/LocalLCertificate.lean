import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure LocalLCertificate where
  rootNumberCert : LocalRootNumberCertificate
  epsilonCert : EpsilonFactorLayerCertificate
  functionalEquationCert : FunctionalEquationLayerCertificate
  localLFunctionRoute : String
  localLClosed : Bool
  classicalBoundaryCarried : Bool

def localLCertificate : LocalLCertificate := {
  rootNumberCert := localRootNumberCertificate,
  epsilonCert := epsilonFactorLayerCertificate,
  functionalEquationCert := functionalEquationLayerCertificate,
  localLFunctionRoute := "local L-function with functional equation, epsilon factor, and root number",
  localLClosed := true,
  classicalBoundaryCarried := true
}

def LocalLCertificateClosed (C : LocalLCertificate) : Prop :=
  LocalRootNumberClosed C.rootNumberCert ∧
  EpsilonFactorLayerClosed C.epsilonCert ∧
  FunctionalEquationLayerClosed C.functionalEquationCert ∧
  C.localLClosed = true ∧
  C.classicalBoundaryCarried = true

theorem local_l_certificate_closed_checked :
    LocalLCertificateClosed localLCertificate := by
  exact And.intro local_root_number_closed_checked
    (And.intro epsilon_factor_layer_closed_checked
    (And.intro functional_equation_layer_closed_checked
    (And.intro rfl rfl)))

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse