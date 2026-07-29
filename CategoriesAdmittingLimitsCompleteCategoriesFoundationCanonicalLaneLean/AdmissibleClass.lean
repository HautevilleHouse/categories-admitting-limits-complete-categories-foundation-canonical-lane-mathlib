import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  limitClosed : Prop
  colimitClosed : Prop
  gateWitness : limitClosed ∨ colimitClosed

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompleteCategoriesFoundationClosed A.object ∧ (A.limitClosed ∨ A.colimitClosed)

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse