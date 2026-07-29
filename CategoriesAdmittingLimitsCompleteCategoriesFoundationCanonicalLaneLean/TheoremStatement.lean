import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure CompleteCategoryAdmittedObject where
  smallCategory : Type u
  hasAllSmallLimits : Prop
  hasAllSmallColimits : Prop
  conclusion : hasAllSmallLimits ∧ hasAllSmallColimits

structure CompleteCategoryWitnessClosed (O : CompleteCategoryAdmittedObject) : Prop :=
  limitClosure : O.hasAllSmallLimits
  colimitClosure : O.hasAllSmallColimits

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse