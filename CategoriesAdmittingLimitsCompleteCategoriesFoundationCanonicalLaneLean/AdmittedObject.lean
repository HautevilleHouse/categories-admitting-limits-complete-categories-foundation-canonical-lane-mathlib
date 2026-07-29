import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Limits.FullyFaithful

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure AdmittedObject where
  category : Type u
  [instCategory : CategoryTheory.Category.{v} category]
  hasLimits : Prop
  hasColimits : Prop
  conclusion : hasLimits ∧ hasColimits

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse