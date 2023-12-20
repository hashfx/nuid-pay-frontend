import 'package:aptos_sdk_dart/aptos_account.dart';

// Generate Aptos Account
final mnemonics = AptosAccount.generateMnemonic();
final sender = AptosAccount.generateAccount(mnemonics);
final receiver = AptosAccount();

// AptosClient connect with Aptos Node
final aptosClient = AptosClient(Constants.devnetAPI, enableDebugLog: true);

// Check and fund account
final amount = BigInt.from(10000000);
bool isExists = await aptosClient.accountExist(sender.address);
if (!isExists) {
  final faucetClient = FaucetClient.fromClient(Constants.faucetDevAPI, aptosClient);
  await faucetClient.fundAccount(sender.address, amount.toString());
  await Future.delayed(const Duration(seconds: 2));
}

final coinClient = CoinClient(aptosClient);

// Check account balance
final balance = await coinClient.checkBalance(sender.address);
print(balance);

// Transfer Aptos Coin
final txHash = await coinClient.transfer(
  sender, 
  receiver.address, 
  BigInt.from(10000),
  createReceiverIfMissing: true);
print(txHash);