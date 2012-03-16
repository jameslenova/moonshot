module GroupsHelper
  
  
  def popularity(rec)
  
  sumofp = 0
  
  rec.each { |rec1| sumofp = sumofp + User.find(rec1).followers.count} 
    
  sumofp
  
  end
  
  


end
