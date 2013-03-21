# Veewee in your Jenkins

* Make a job in jenkins
* Put the `generatorjob.config.xml` file as the config.xml
* Run the job.
* Tell Jenkins to reload configuration from disk

The result should be that this job generates one job for every template in
veewee master. Example job console output:

    + ruby create-jobs.rb templates
    Writing /app/jenkins/.jenkins/jobs/veewee-CentOS-4.8-i386/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-CentOS-5.5-i386-netboot/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-CentOS-5.5-x86_64-netboot/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-CentOS-5.6-i386-netboot/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-CentOS-5.6-i386/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-CentOS-5.6-x86_64-netboot-packages/config.xml
    ...
    Writing /app/jenkins/.jenkins/jobs/veewee-windows-7-ultimate-amd64/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-windows-7sp1-ultimate-amd64/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-windows-8-amd64/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-windows-8-i386/config.xml
    Writing /app/jenkins/.jenkins/jobs/veewee-windows-8-preview-amd64/config.xml
    Finished: SUCCESS

Now you can build! MUWAHAHAHAHA. Hi.

