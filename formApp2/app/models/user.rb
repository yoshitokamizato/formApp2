class User < ActiveRecord::Base
  def searchAll
    return User.all
  end

  def searchId(id1,id2)
    return User.find_by_sql(['select * from users where id >= :id1 and id <= :id2', {id1: id1, id2: id2}])
  end

  def searchData(user)
    return User.find_by_sql(['SELECT * FROM users WHERE CONCAT(id, name, address, gender, program, skils) LIKE :user', {user: "%#{user}%"}])
  end
end
