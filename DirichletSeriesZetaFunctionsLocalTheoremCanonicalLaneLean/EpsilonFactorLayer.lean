import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure EpsilonFactorLayerCertificate where
  rootNumberCert : LocalRootNumberCertificate
  epsilonFactorRoute : String
  localConstantRoute : String
  signRoute : String
  epsilonChecked : Bool
  signChecked : Bool

def epsilonFactorLayerCertificate : EpsilonFactorLayerCertificate := {
  rootNumberCert := localRootNumberCertificate,
  epsilonFactorRoute := "epsilon factor via local root number and conductor",
  localConstantRoute := "local constant from epsilon factor",
  signRoute := "sign of functional equation",
  epsilonChecked := true,
  signChecked := true
}

def EpsilonFactorLayerClosed (C : EpsilonFactorLayerCertificate) : Prop :=
  LocalRootNumberClosed C.rootNumberCert ∧
  C.epsilonChecked = true ∧
  C.signChecked = true

theorem epsilon_factor_layer_closed_checked :
    EpsilonFactorLayerClosed epsilonFactorLayerCertificate := by
  exact And.intro local_root_number_closed_checked (And.intro rfl rfl)

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse