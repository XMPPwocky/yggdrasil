[[ArchiveBox (Internet archiver)]] serves up archived pages without sanitizing [[Javascript]] on them - i.e. it's [[Cross-site scripting|XSS]] by design.

Could work around this if it set a proper [[Content-Type (HTTP header)]] so browsers didn't interpret archived content as [[HTML]], but it doesn't seem to yet..

Or possibly [[Content Security Policy|Content Security Policies]] to disallow scripts? 