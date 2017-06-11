.class public Lcom/example/android/BluetoothChat/ViewAnim;
.super Landroid/view/animation/Animation;
.source "ViewAnim.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public ViewAnimation2()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 25
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 26
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 17
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/example/android/BluetoothChat/ViewAnim;->setDuration(J)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/ViewAnim;->setFillAfter(Z)V

    .line 19
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/ViewAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    return-void
.end method
