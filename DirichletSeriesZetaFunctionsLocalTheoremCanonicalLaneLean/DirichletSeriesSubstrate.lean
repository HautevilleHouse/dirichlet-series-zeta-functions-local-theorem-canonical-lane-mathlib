import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.Basic
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean

structure DirichletSeriesDatum where
  series : String
  abscissaConvergence : ℂ
  abscissaAbsoluteConvergence : ℂ
  analyticContinuationChecked : Bool
  functionalEquationChecked : Bool
  eulerProductChecked : Bool
deriving Repr, DecidableEq

structure LFunctionDatum where
  dirichletCharacter : String
  lSeries : DirichletSeriesDatum
  conductor : ℕ
  gammaFactor : ℂ → ℂ
  rootNumber : ℂ
  localFunctionalEquationChecked : Bool
deriving Repr, DecidableEq

def primitiveDirichletSeriesDatum : DirichletSeriesDatum := {
  series := "Riemann zeta function",
  abscissaConvergence := 1,
  abscissaAbsoluteConvergence := 1,
  analyticContinuationChecked := true,
  functionalEquationChecked := true,
  eulerProductChecked := true
}

def primitiveLFunctionDatum : LFunctionDatum := {
  dirichletCharacter := "trivial",
  lSeries := primitiveDirichletSeriesDatum,
  conductor := 1,
  gammaFactor := λ s => π ^ (-s/2) * Real.Gamma (s/2),
  rootNumber := 1,
  localFunctionalEquationChecked := true
}

end DirichletSeriesZetaFunctionsLocalTheoremCanonicalLaneLean
end HautevilleHouse
