class Group
  attr_accessor :id, :group_letter, :team_1, :team_2, :team_3, :team_4, :team_1_flag, :team_2_flag, :team_3_flag, :team_4_flag

  def self.open_connection
    return conn = PG.connect(dbname: "worldcup")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM groups ORDER BY id"
    results = conn.exec(sql)

    posts = results.map do |result|
      self.hydrate(result)
    end

    return posts
  end

  def self.hydrate (post_data)
    group_instance = Group.new
    group_instance.id = post_data["id"]
    group_instance.group_letter = post_data["group_letter"]
    group_instance.team_1 = post_data["team_1"]
    group_instance.team_2 = post_data["team_2"]
    group_instance.team_3 = post_data["team_3"]
    group_instance.team_4 = post_data["team_4"]
    group_instance.team_1_flag = post_data["team_1_flag"]
    group_instance.team_2_flag = post_data["team_2_flag"]
    group_instance.team_3_flag = post_data["team_3_flag"]
    group_instance.team_4_flag = post_data["team_4_flag"]
    return group_instance
  end

  def self.find (id)
    conn = self.open_connection
    sql = "SELECT * FROM groups WHERE id=" + id
    results = conn.exec(sql)

    posts = results.map do |result|
      self.hydrate(result)
    end

    return posts[0]
  end

  def save
    conn = Group.open_connection
    if(!self.id)
      sql = "INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('#{self.group_letter}', '#{self.team_1}', '#{self.team_2}', '#{self.team_3}', '#{self.team_4}', '#{self.team_1_flag}', '#{self.team_2_flag}', '#{self.team_3_flag}', '#{self.team_4_flag}')"

    else
      sql = "UPDATE groups SET group_letter='#{self.group_letter}', team_1='#{self.team_1}', team_2='#{self.team_2}', team_3='#{self.team_3}', team_4='#{self.team_4}', team_1_flag='#{self.team_1_flag}', team_2_flag='#{self.team_2_flag}', team_3_flag='#{self.team_3_flag}', team_4_flag='#{self.team_4_flag}' WHERE id=#{self.id}"
    end

    conn.exec(sql)
  end

  def self.destroy (id)
    conn = Group.open_connection

    sql = "DELETE FROM groups WHERE id=" + id

    conn.exec(sql)
  end

end
