require 'do_mysql'
require 'data_objects_adapter'

dir = Pathname(__FILE__).dirname.expand_path / 'mysql_adapter'

require dir / 'adapter'
