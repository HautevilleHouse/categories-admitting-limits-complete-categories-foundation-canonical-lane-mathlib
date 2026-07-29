import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.limitClosed ∨ A.colimitClosed

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse