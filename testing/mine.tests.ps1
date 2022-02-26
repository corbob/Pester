
Describe 'All The Tests' {
	Context 'Reasons' {
		It 'Skips...' {
			Set-ItResult -Skipped -Because 'I Told it to skip'
		}
		It 'Does not skip' {
			$true | Should -BeTrue
		}
		It 'is Inconclusive' {
			Set-ItResult -Inconclusive -Because 'I am inconclusive!'
		}
		It 'is Pending' {
			Set-ItResult -Pending -Because 'I am pending!'
		}
		It 'is Failed!' {
			$true | Should -BeFalse -Because 'I am failed test'
		}
	}
	Context 'No Reasons' {
		It 'Skips...' {
			Set-ItResult -Skipped
		}
		It 'Does not skip' {
			$true | Should -BeTrue
		}
		It 'is Inconclusive' {
			Set-ItResult -Inconclusive
		}
		It 'is Pending' {
			Set-ItResult -Pending
		}
		It 'is Failed!' {
			$true | Should -BeFalse
		}
	}
}
