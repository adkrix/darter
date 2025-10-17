import 'utils/utils.dart';

void changeDomain(String newDomain) async {
  if (!checkDomain(newDomain)) {
    Exception('Domain must be like com.fb.app');
  }

  await renameBundleId(newDomain);
  await renameDomainDir(newDomain);
}
