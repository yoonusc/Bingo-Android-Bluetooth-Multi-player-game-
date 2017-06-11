.class Lcom/example/android/BluetoothChat/BluetoothChat$2;
.super Landroid/os/Handler;
.source "BluetoothChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothChat;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 421
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/android/BluetoothChat/BluetoothChat$2;)Lcom/example/android/BluetoothChat/BluetoothChat;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 424
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 878
    :goto_0
    return-void

    .line 426
    :pswitch_0
    const-string v6, "BluetoothChat"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MESSAGE_STATE_CHANGE: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$1(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060006

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$1(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060005

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 430
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$1(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$2(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$3(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0

    .line 434
    :pswitch_3
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$1(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060004

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 443
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    .line 445
    .local v4, "writeBuf":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 446
    .local v5, "writeMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$3(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    .end local v4    # "writeBuf":[B
    .end local v5    # "writeMessage":Ljava/lang/String;
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    .line 453
    .local v3, "readBuf":[B
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    new-instance v7, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v7, v3, v11, v8}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->readMessage:Ljava/lang/String;

    .line 456
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->readMessage:Ljava/lang/String;

    iput-object v7, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    .line 460
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    const-string v7, "notredy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 462
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "<<Your Oponent Not Ready>>"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 463
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 865
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$3(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->readMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 470
    :cond_1
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    const-string v7, "confi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    sget v6, Lcom/example/android/BluetoothChat/BluetoothChat;->m:I

    const/16 v7, 0x19

    if-ge v6, v7, :cond_4

    .line 478
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    const-string v7, "notredy"

    invoke-virtual {v6, v7}, Lcom/example/android/BluetoothChat/BluetoothChat;->genf(Ljava/lang/String;)V

    .line 506
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    const-string v7, "redy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 509
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iput v9, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    .line 510
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im1:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im2:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im3:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im4:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im5:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    const-string v7, "Bingo Started"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 518
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 523
    :cond_3
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->Re:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 526
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6, v9}, Lcom/example/android/BluetoothChat/BluetoothChat;->reset(I)V

    .line 527
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v6, " You Lose...! "

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 529
    const v6, 0x7f020001

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 530
    const-string v6, "You Lose Game  .. Do you Want Play Again"

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 532
    const-string v6, "Play Again"

    new-instance v7, Lcom/example/android/BluetoothChat/BluetoothChat$2$1;

    invoke-direct {v7, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$2$1;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat$2;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    const-string v6, "Verify"

    new-instance v7, Lcom/example/android/BluetoothChat/BluetoothChat$2$2;

    invoke-direct {v7, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$2$2;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat$2;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 554
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 562
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    const-string v7, "You Lose Bingo....!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 565
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iput v9, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->BF:I

    goto/16 :goto_1

    .line 484
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iput v11, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->GMF:I

    .line 487
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iput v9, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->press:I

    .line 489
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im1:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im2:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im3:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im4:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->im5:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    const-string v7, "Bingo Started"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->t3:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->anm:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    const-string v7, "redy"

    invoke-virtual {v6, v7}, Lcom/example/android/BluetoothChat/BluetoothChat;->genf(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 595
    :cond_5
    :try_start_0
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 600
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 602
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 603
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 604
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 605
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 609
    :cond_6
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 612
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b2:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 613
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 614
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x6

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 615
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 616
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 620
    :cond_7
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 623
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b3:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 625
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 626
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x8

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 627
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 628
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 630
    :cond_8
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 633
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b4:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 635
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 636
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 637
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 638
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 640
    :cond_9
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 643
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b5:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 644
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 645
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 646
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 647
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 649
    :cond_a
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 652
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b6:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 653
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 654
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 655
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 656
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 658
    :cond_b
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 661
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b7:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 662
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 663
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 664
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 665
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 667
    :cond_c
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 670
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b8:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 672
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 673
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x5

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 674
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 675
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 677
    :cond_d
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 680
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b9:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 682
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 683
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 684
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 685
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 687
    :cond_e
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 690
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b10:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 691
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 692
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0xa

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 693
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 694
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 697
    :cond_f
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 700
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b11:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 702
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 703
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0xe

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 704
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 705
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 707
    :cond_10
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 710
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b12:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 711
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 712
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0xc

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 713
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 714
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 717
    :cond_11
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 720
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b13:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 722
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 723
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0xd

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 724
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 725
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 727
    :cond_12
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 730
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b14:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 731
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 732
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0xb

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 733
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 734
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 737
    :cond_13
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 740
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b15:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 742
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 743
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0xf

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 744
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 745
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 747
    :cond_14
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 750
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b16:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 751
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 752
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x13

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 753
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 754
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 757
    :cond_15
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 760
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b17:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 761
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 762
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x11

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 763
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 764
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 767
    :cond_16
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 770
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b18:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 772
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 773
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x12

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 774
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 775
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 777
    :cond_17
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 780
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b19:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 782
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 783
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x10

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 784
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 785
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 787
    :cond_18
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 790
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b20:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 792
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 793
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x14

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 794
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 795
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 797
    :cond_19
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 800
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b21:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 802
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 803
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x18

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 804
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 805
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 807
    :cond_1a
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 810
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b22:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 812
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 813
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x16

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 814
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 815
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 817
    :cond_1b
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 820
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b23:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 821
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 822
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x17

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 823
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 824
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 827
    :cond_1c
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 830
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b24:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 832
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 833
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x15

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 834
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 835
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V

    .line 837
    :cond_1d
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v7, v7, Lcom/example/android/BluetoothChat/BluetoothChat;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 840
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->b25:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 842
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->mtr:[[I

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 843
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v6, v6, Lcom/example/android/BluetoothChat/BluetoothChat;->bf:[I

    const/16 v7, 0x19

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 844
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->check()V

    .line 845
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->ck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 851
    :catch_0
    move-exception v2

    .line 854
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Eroor"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 855
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 869
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "readBuf":[B
    :pswitch_6
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "device_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$4(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 870
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Connected to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    iget-object v8, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$2(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 870
    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 871
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 874
    :pswitch_7
    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v6}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "toast"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 875
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 427
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
