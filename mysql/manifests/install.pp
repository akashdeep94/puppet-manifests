class mysql::install (
 $user,
 $group,
){
        $mysql_pkgs = [  'mysql++',              
 			 'mysql++-devel',        
			 'mysql++-manuals',     
			 'mysql-bench',          
			 'mysql-connector-java', 
	                 'mysql-connector-odbc', 
			 'mysql-connector-python',	
			 'mysql-devel',          
			 'mysql-embedded',       
			 'mysql-embedded-devel', 
			 'mysql-mmm',            
			 'mysql-mmm-agent',   
			 'mysql-mmm-monitor',   	
			 'mysql-mmm-tools',     
			 'mysql-proxy',         
			 'mysql-proxy-devel',   
			 'mysql-server',        
			 'mysql-test',         
			 'mysql-utilities',    	
			 'mysqlreport',        
			 'mysqltuner' ]
  
         package {$mysql_pkgs:
                ensure => present,
                require => User[$user]


        }
        user {$user:
            ensure => present,
            comment => 'My SQL user',
            gid => $group,
            shell => '/bin/false',
            require => Group[$group],
        }
        group{$group:
            ensure => present,

        }



}

