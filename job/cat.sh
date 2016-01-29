st=$(ls api_log_25)
#echo "hello"
for file in $filelist
do
        #if [ -d $file ]
        #then
                echo $file
                cat /data1/wwwroot/hiyoulog/api_log_26/$file /data1/wwwroot/hiyoulog/api_log_25/$file >/data1/wwwroot/hiyoulog/api_log/$file
                cat /data1/wwwroot/hiyoulog/api_log_25/$file /data1/wwwroot/hiyoulog/api_log_26/$file >/data1/wwwroot/hiyoulog/api_log/$file
#       fi
done

