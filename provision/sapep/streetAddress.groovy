package provision.sapep

def it = user.addresses?.iterator()
output = it?.hasNext() ? it.next()?.streetDirection : null