.class Lcom/example/android/BluetoothChat/BluetoothChat$3;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->setupChat()V
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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$3;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat$3;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    .local v0, "ff":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat$3;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 335
    return-void
.end method
