import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundation.CompleteCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundation

structure EqualizerLimit (C : CompleteCategory) {X Y : C.obj} (f g : C.hom X Y) where
  equalizerObject : C.obj
  equalizerMap : C.hom equalizerObject X
  universalProperty : ∀ (other : C.obj) (h : C.hom other X),
    C.comp h f = C.comp h g → ∃! (u : C.hom other equalizerObject), C.comp u equalizerMap = h
  universalPropertyTerm : universalProperty

structure EqualizerLimitEvidence {C : CompleteCategory} {X Y : C.obj} {f g : C.hom X Y}
    (E : EqualizerLimit C f g) where
  universalPropertyClosed : E.universalProperty

def EqualizerLimitClosed {C : CompleteCategory} {X Y : C.obj} {f g : C.hom X Y}
    (E : EqualizerLimit C f g) : Prop :=
  E.universalProperty

theorem equalizer_limit_closed_from_evidence {C : CompleteCategory} {X Y : C.obj} {f g : C.hom X Y}
    (E : EqualizerLimit C f g) (Ev : EqualizerLimitEvidence E) : EqualizerLimitClosed E :=
  Ev.universalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundation
end HautevilleHouse