## Ruby: URI::FTPS class
##
## Author:: Nathan Bush
## Copyright:: (c) 2023 Nathan Bush @ News Hub Media
## License:: You can redistribute it and/or modify it under the same term as Ruby.
## Date:: 2023-10-6, since 2023-10-6

require 'uri'
require 'cgi'

module URI

  ## FTPS is ftp + SSL. If you have the option, use sftp instead.
  class FTPS < Generic
    DEFAULT_PORT = 21

    def self.build(args)
      if args.kind_of?(Array)
        args[3] = '/' + args[3].sub(/^\//, '%2F')
      else
        args[:path] = '/' + args[:path].sub(/^\//, '%2F')
      end

      tmp = Util::make_components_hash(self, args)
      return super(tmp)
    end
  end

  register_scheme 'FTPS', FTPS
end

