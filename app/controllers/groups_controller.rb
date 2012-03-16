require 'set'

class GroupsController < ApplicationController
  
  def create
    @foundgroups = Relationship.find_by_sql 'SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
    where relone.follower_id != relthree.follower_id'
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end
  
  
  def create4
    @foundgroups = Relationship.find_by_sql 'SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
    where relone.follower_id != relthree.follower_id
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id'
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end
  
  def create6close
    @foundgroups = Relationship.find_by_sql 'SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth,relsix.follower_id as sixth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 INNER JOIN Relationships relsix ON relfive.followed_id = relsix.follower_id
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    and relone.follower_id != relfive.follower_id
    and reltwo.follower_id != relfive.follower_id
    and relthree.follower_id != relfive.follower_id
    
    and
    
    (relone.follower_id == relsix.follower_id
    or reltwo.follower_id == relsix.follower_id
    or relthree.follower_id == relsix.follower_id
    or relfour.follower_id == relsix.follower_id)'
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end
  
  def create7close
    @foundgroups = Relationship.find_by_sql 'SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth,relsix.follower_id as sixth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 INNER JOIN Relationships relsix ON relfive.followed_id = relsix.follower_id
                 INNER JOIN Relationships relseven ON relsix.followed_id = relseven.follower_id
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    and relone.follower_id != relfive.follower_id
    and reltwo.follower_id != relfive.follower_id
    and relthree.follower_id != relfive.follower_id
    
    and relone.follower_id != relsix.follower_id
    and reltwo.follower_id != relsix.follower_id
    and relthree.follower_id != relsix.follower_id
    and relfour.follower_id != relsix.follower_id
    
    and
    
    (relone.follower_id == relseven.follower_id
    or reltwo.follower_id == relseven.follower_id
    or relthree.follower_id == relseven.follower_id
    or relfour.follower_id == relseven.follower_id)
    or relfive.follower_id == relseven.follower_id)'
    
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end
  
  
  def create5close
    @foundgroups = Relationship.find_by_sql 'SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    
    
    and
    
    (relone.follower_id == relfive.follower_id
    or reltwo.follower_id == relfive.follower_id
    or relthree.follower_id == relfive.follower_id)'
    
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end


def create5closetoset
    @foundgroups = Relationship.find_by_sql 'SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    
    
    and
    
    (relone.follower_id == relfive.follower_id
    or reltwo.follower_id == relfive.follower_id
    or relthree.follower_id == relfive.follower_id)'
    @foundgroupssets = Set.new
    @foundgroups.each { |rec| @foundgroupssets.add([rec.first,rec.second,rec.third,rec.fouth].to_set)} 
    
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
end

def shedule4event
  eventic=params[:id]
    @foundgroups = Relationship.find_by_sql(['SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 
                 INNER JOIN Joinins jone ON jone.user_id = relone.follower_id
                 INNER JOIN Joinins jtwo ON jtwo.user_id = reltwo.follower_id
                 INNER JOIN Joinins jthree ON jthree.user_id = relthree.follower_id
                 INNER JOIN Joinins jfour ON jfour.user_id = relfour.follower_id

                 
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    
    and jone.event_id = ?
    and jtwo.event_id = ?
    and jthree.event_id = ?
    and jfour.event_id = ?
    
    
    
    
    and
    
    (relone.follower_id == relfive.follower_id
    or reltwo.follower_id == relfive.follower_id
    or relthree.follower_id == relfive.follower_id)', eventic,eventic, eventic, eventic])
    @foundgroupssets = Set.new
    @foundgroups.each { |rec| @foundgroupssets.add([rec.first,rec.second,rec.third,rec.fouth].to_set)} 
    
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end





def shedule4eventbestfit
  eventic=params[:id]
    @foundgroups = Relationship.find_by_sql(['SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 
                 INNER JOIN Joinins jone ON jone.user_id = relone.follower_id
                 INNER JOIN Joinins jtwo ON jtwo.user_id = reltwo.follower_id
                 INNER JOIN Joinins jthree ON jthree.user_id = relthree.follower_id
                 INNER JOIN Joinins jfour ON jfour.user_id = relfour.follower_id

                 
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    
    and jone.event_id = ?
    and jtwo.event_id = ?
    and jthree.event_id = ?
    and jfour.event_id = ?
    
    
    
    
    and
    
    (relone.follower_id == relfive.follower_id
    or reltwo.follower_id == relfive.follower_id
    or relthree.follower_id == relfive.follower_id)', eventic,eventic, eventic, eventic])
    @foundgroupssets = Set.new
    @foundgroups.each { |rec| @foundgroupssets.add([rec.first,rec.second,rec.third,rec.fouth].to_set)} 
    @arrayofgroupspopularity = Array.new
    
    @foundgroupssets.each { |rec| @arrayofgroupspopularity << [rec,popularity(rec)]} 
    
    @arrayofgroupspopularity.sort! {|x,y| x[1] <=> y[1] }
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
end

def shedule4eventbestfitnoclash
  eventic=params[:id]
    @foundgroups = Relationship.find_by_sql(['SELECT
                 relone.follower_id as first ,reltwo.follower_id as second ,relthree.follower_id as third,relfour.follower_id as fouth,relfive.follower_id as fifth
                 
               FROM
                 Relationships AS relone
                 INNER JOIN Relationships reltwo ON relone.followed_id = reltwo.follower_id
                 INNER JOIN Relationships relthree ON reltwo.followed_id = relthree.follower_id
                 INNER JOIN Relationships relfour ON relthree.followed_id = relfour.follower_id
                 INNER JOIN Relationships relfive ON relfour.followed_id = relfive.follower_id
                 
                 INNER JOIN Freefors jone ON jone.user_id = relone.follower_id
                 INNER JOIN Freefors jtwo ON jtwo.user_id = reltwo.follower_id
                 INNER JOIN Freefors jthree ON jthree.user_id = relthree.follower_id
                 INNER JOIN Freefors jfour ON jfour.user_id = relfour.follower_id

                 
    where relone.follower_id != relthree.follower_id
    
    and relone.follower_id != relfour.follower_id
    and reltwo.follower_id != relfour.follower_id
    
    
    and jone.event_id = ?
    and jtwo.event_id = ?
    and jthree.event_id = ?
    and jfour.event_id = ?
    
    
    
    
    and
    
    (relone.follower_id = relfive.follower_id
    or reltwo.follower_id = relfive.follower_id
    or relthree.follower_id = relfive.follower_id)', eventic,eventic, eventic, eventic])
    @foundgroupssets = Set.new
    @foundgroups.each { |rec| @foundgroupssets.add([rec.first,rec.second,rec.third,rec.fouth].to_set)} 
    @arrayofgroupspopularity = Array.new
    
    @foundgroupssets.each { |rec| @arrayofgroupspopularity << [rec,popularity(rec)]} 
    
    @arrayofgroupspopularity.sort! {|x,y| x[1] <=> y[1] }
    
    @arrayofgroupspopularitynoclash = Array.new
    
    
    sizeofarray= @arrayofgroupspopularity.length
    arraycount =0
    
    while (arraycount < sizeofarray)
      sizeofnoclash =@arrayofgroupspopularitynoclash.length
      noclashcount=0
      clashliow=false
      while (noclashcount < sizeofnoclash )
        if
          (@arrayofgroupspopularitynoclash[noclashcount] & (@arrayofgroupspopularity[arraycount][0])).length >0
          then clashliow=true
               noclashcount=sizeofnoclash
        else
          noclashcount=noclashcount+1
        end
      end
      if  !(clashliow)
        
        
        @arrayofgroupspopularitynoclash << (@arrayofgroupspopularity[arraycount][0])
      end
      arraycount=arraycount+1
   end
    
    sizeofnoclash =@arrayofgroupspopularitynoclash.length
    noclashcount=0
    
    while (noclashcount < sizeofnoclash )
        @circleone = Circle.new({:event_id=>eventic,:table=>noclashcount.to_s()})
        @circleone.save
        
          
    #      @arrayofgroupspopularitynoclash[noclashcount].each { |rec| Notifier.welcome
#(rec,eventic,noclashcount).deliver  }
          
          @arrayofgroupspopularitynoclash[noclashcount].each{ |rec| @circleone.circleusers.build({:user_id=>rec}).save}
              
              
              
              
              
            
              
          
          
          noclashcount=noclashcount+1
        
    end
    
    @allcircle = Circle.all
    
    
    respond_to do |format|
      format.html 
      format.js
    end
    
  end






end

