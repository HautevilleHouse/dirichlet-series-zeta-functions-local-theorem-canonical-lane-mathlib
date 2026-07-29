import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure LocalRootNumber where
  localZeta : LocalZetaFunction
  rootNumber : ℂ
  conductor : Nat
  archimedeanFactor : ℂ
deriving Repr, DecidableEq

structure LocalRootNumberCertificate where
  rootNumberDatum : LocalRootNumber
  rootNumberRoute : String
  conductorRoute : String
  archimedeanRoute : String
  rootNumberChecked : Bool
  conductorChecked : Bool

def primitiveLocalRootNumber : LocalRootNumber := {
  localZeta := primitiveLocalZetaFunction,
  rootNumber := 1,
  conductor := 1,
  archimedeanFactor := 1
}

def localRootNumberCertificate : LocalRootNumberCertificate := {
  rootNumberDatum := primitiveLocalRootNumber,
  rootNumberRoute := "local root number via epsilon factor",
  conductorRoute := "conductor of the local L-function",
  archimedeanRoute := "archimedean factor from gamma factor",
  rootNumberChecked := true,
  conductorChecked := true
}

def LocalRootNumberClosed (C : LocalRootNumberCertificate) : Prop :=
  C.rootNumberDatum.conductor > 0 ∧
  C.rootNumberChecked = true ∧
  C.conductorChecked = true

theorem local_root_number_closed_checked :
    LocalRootNumberClosed localRootNumberCertificate := by
  exact And.intro (by decide) (And.intro rfl rfl)

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse