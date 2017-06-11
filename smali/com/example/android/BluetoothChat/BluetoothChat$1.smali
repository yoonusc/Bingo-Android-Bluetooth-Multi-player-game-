.class Lcom/example/android/BluetoothChat/BluetoothChat$1;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 411
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 415
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const-string v1, "BluetoothChat"

    const-string v2, "END onEditorAction"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v3
.end method
