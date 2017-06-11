.class Lcom/example/android/BluetoothChat/BluetoothChat$7;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$7;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1373
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1375
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$7;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You are still not connected"

    .line 1376
    const/4 v2, 0x1

    .line 1375
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1377
    return-void
.end method
