require_relative "../exec.rb"


describe Survey do
  describe '.stock' do
    context 'then invoked' do
      it "return hash" do
        expect(Survey.stock).to be_a(Hash)
      end
    end
  end

  describe '.initialize_by_quiestions' do
    context 'then invoked' do
      it "have to stdout" do
        expect(Survey.initialize_by_quiestions).to output.to_stdout
      end
    end

    context 'then invoke #params' do
      it "returns hash" do
        expect(Survey.initialize_by_quiestions).to be_a(Hash)
      end
    end
  end

end
