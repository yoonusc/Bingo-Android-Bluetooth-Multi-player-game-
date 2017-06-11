.class Lcom/example/android/BluetoothChat/BluetoothChat$5;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V
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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$5;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 1003
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$5;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iput v2, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->BF:I

    .line 1005
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$5;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->str:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$5;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->b1:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$5;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bingoooo.."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1013
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1014
    return-void
.end method
