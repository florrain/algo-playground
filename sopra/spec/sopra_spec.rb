require 'rspec'
require "./sopra"

# let(:full_example_string) { "SHXPQ JDIAJK!"}
# let(:full_example_decrypted) { "SOPRA STERIA!"}

describe Sopra do
  describe "Email example" do
    describe "Two letters" do
      let(:string) { "SH" }
      let(:decrypted_string) { "SO" }

      it "should decrypt two letters" do
        expect(Sopra.decrypt!(string)).to eq(decrypted_string)
      end
    end

    describe "A word" do
      let(:string) { "SHXPQ"}
      let(:decrypted_string) { "SOPRA"}

      it "should decrypt a word" do
        expect(Sopra.decrypt!(string)).to eq(decrypted_string)
      end
    end

    describe "Two words separated by a space" do
      let(:string) { "SHXPQ JDIAJK!"}
      let(:decrypted_string) { "SOPRA STERIA!"}

      it "should decrypt two words separated by a space" do
        expect(Sopra.decrypt!(string)).to eq(decrypted_string)
      end
    end

    describe "First word from the message" do
      let(:string) { "Fjucemffyguhz !"}
      let(:decrypted_string) { "FELICITATIONS !"}
      let(:offset) { 1 }

      it "should decrypt the first word" do
        expect(Sopra.decrypt!(string, offset)).to eq(decrypted_string)
      end
    end

    describe "Part of the message" do
      let(:string) { "Fjucemffyguhz ! Cgiwqlcgf"}
      let(:decrypted_string) { "FELICITATIONS ! DECOUVREZ"}
      let(:offset) { 1 }

      it "should decrypt two words from the message" do
        expect(Sopra.decrypt!(string, offset)).to eq(decrypted_string)
      end
    end
  end
end