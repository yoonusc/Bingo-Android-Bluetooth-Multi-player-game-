.class public Lcom/example/android/BluetoothChat/Start;
.super Landroid/app/Activity;
.source "Start.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ab:Landroid/widget/Button;

.field public anmf:Landroid/view/animation/Animation;

.field ba:Landroid/widget/Button;

.field baa:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "ar"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x400

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 77
    :pswitch_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 81
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 83
    const-string v3, "Tranqul Bingo"

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 87
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 93
    .end local v0    # "d":Landroid/app/Dialog;
    .end local v2    # "window":Landroid/view/Window;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.example.android.START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "ob":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/example/android/BluetoothChat/Start;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v1    # "ob":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/Start;->finish()V

    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 101
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f080037
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanc"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/Start;->setContentView(I)V

    .line 27
    const v2, 0x7f040009

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/example/android/BluetoothChat/Start;->anmf:Landroid/view/animation/Animation;

    .line 30
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/Start;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "font/forever.TTF"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 35
    .local v0, "j":Landroid/graphics/Typeface;
    const v2, 0x7f080038

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/Start;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ab:Landroid/widget/Button;

    .line 36
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ab:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ab:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v2, 0x7f080037

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/Start;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ba:Landroid/widget/Button;

    .line 40
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ba:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ba:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/Start;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/example/android/BluetoothChat/Start;->baa:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->baa:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->baa:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v2, "Tranquil Bingo"

    const-string v3, "Loading......"

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 48
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 50
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/example/android/BluetoothChat/Start$1;

    invoke-direct {v3, p0, v1}, Lcom/example/android/BluetoothChat/Start$1;-><init>(Lcom/example/android/BluetoothChat/Start;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 65
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ab:Landroid/widget/Button;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/Start;->anmf:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->ba:Landroid/widget/Button;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/Start;->anmf:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    iget-object v2, p0, Lcom/example/android/BluetoothChat/Start;->baa:Landroid/widget/Button;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/Start;->anmf:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    return-void
.end method
