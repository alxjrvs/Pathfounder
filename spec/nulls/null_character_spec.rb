require 'rails_helper'

describe NullCharacter do
  before do
    @character = NullCharacter.new
  end

  describe ".armor_check_penalty" do
    it "returns a zero" do
      expect(@character.armor_check_penalty).to eq 0
    end
  end

  describe ".stat_block" do
    it "returns a NullStatBlock" do
      expect(@character.stat_block.class).to eq NullStatBlock
    end
  end

  describe ".stats" do
    it "returns a NullStatBlock" do
      expect(@character.stat_block.class).to eq NullStatBlock
    end
  end

  describe ".favored_class" do
    it "returns a NullPfClass" do
      expect(@character.favored_class.class).to eq NullPfClass
    end
  end

  describe ".mods" do
    it "returns an empty array" do
      expect(@character.mods).to eq []
    end
  end

  describe ".total_modifer_for" do
    it "returns a zero" do
      expect(@character.total_modifer_for(:foo)).to eq 0
    end
  end

  describe ".find_mods_by_trait" do
    it "returns an empty array" do
      expect(@character.find_mods_by_trait(:foo)).to eq []
    end
  end

  describe ".allowed_alignments" do
    it "returns an empty array" do
      expect(@character.allowed_alignments).to eq []
    end
  end

  describe ".class_skills" do
    it "returns an empty array" do
      expect(@character.class_skills).to eq []
    end
  end

  describe ".nil?" do
    it "is true" do
      expect(@character).to be_nil
    end
  end
end
