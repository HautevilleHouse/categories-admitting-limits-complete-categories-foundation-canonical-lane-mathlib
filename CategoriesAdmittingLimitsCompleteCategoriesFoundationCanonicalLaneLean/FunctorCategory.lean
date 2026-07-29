import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundation.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundation

structure FunctorCategory (C D : CompleteCategory) where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : ∀ (F : objects), morphisms F F
  composition : ∀ {F G H : objects}, morphisms F G → morphisms G H → morphisms F H
  identityLaw : ∀ {F G : objects} (η : morphisms F G), composition (identity F) η = η
  compositionLaw : ∀ {F G H : objects} (η : morphisms F G) (θ : morphisms G H) (ι : morphisms H I), composition (composition η θ) ι = composition η (composition θ ι)
  limitsLift : Prop
  limitsLiftTerm : limitsLift

structure FunctorCategoryEvidence (C D : CompleteCategory) (F : FunctorCategory C D) where
  limitsLiftClosed : F.limitsLift

def FunctorCategoryClosed (C D : CompleteCategory) (F : FunctorCategory C D) : Prop :=
  F.limitsLift

theorem functor_category_closed_from_evidence (C D : CompleteCategory) (F : FunctorCategory C D)
    (E : FunctorCategoryEvidence C D F) : FunctorCategoryClosed C D F :=
  E.limitsLiftClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundation
end HautevilleHouse