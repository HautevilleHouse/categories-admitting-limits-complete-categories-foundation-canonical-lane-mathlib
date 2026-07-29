import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundation

structure CompleteCategory where
  obj : Type u
  hom : obj → obj → Type v
  id : ∀ (X : obj), hom X X
  comp : ∀ {X Y Z : obj}, hom X Y → hom Y Z → hom X Z
  idComp : ∀ {X Y : obj} (f : hom X Y), comp (id X) f = f
  compId : ∀ {X Y : obj} (f : hom X Y), comp f (id Y) = f
  assoc : ∀ {W X Y Z : obj} (f : hom W X) (g : hom X Y) (h : hom Y Z), comp (comp f g) h = comp f (comp g h)
  hasSmallLimits : Prop
  hasSmallLimitsTerm : hasSmallLimits

structure CompleteCategoryEvidence (C : CompleteCategory) where
  hasSmallLimitsClosed : C.hasSmallLimits

def CompleteCategoryClosed (C : CompleteCategory) : Prop :=
  C.hasSmallLimits

theorem complete_category_closed_from_evidence (C : CompleteCategory) (E : CompleteCategoryEvidence C) :
    CompleteCategoryClosed C :=
  E.hasSmallLimitsClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundation
end HautevilleHouse