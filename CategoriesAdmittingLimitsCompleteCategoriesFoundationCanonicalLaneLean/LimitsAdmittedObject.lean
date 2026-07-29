import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure LimitsAdmittedObject where
  category : Type u
  diagram : Type v
  limitExists : Prop
  limitUnique : Prop
  conclusion : limitExists ∧ limitUnique

def LimitsWitnessClosed (O : LimitsAdmittedObject) : Prop :=
  O.limitExists ∧ O.limitUnique

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse