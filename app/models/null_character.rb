class NullCharacter

  Character::CLASS_DELEGATES.each do |cd|
    delegate cd, to: :favored_class
  end
  StatBlock::STATS.each do |s|
    delegate "#{s}", to: :stats
  end
  Skills::ALL.each do |sk|
    delegate sk, to: :skill_list
  end

  def nil?
    true
  end

  def allowed_alignments
    []
  end

  def skill_list
    NullSkillList.new
  end

  def skills
    skill_list.skills
  end

  def stat_block
    NullStatBlock.new
  end

  def stats
    stat_block
  end

  def favored_class
    NullPfClass.new
  end

  def class_skills
    []
  end
end