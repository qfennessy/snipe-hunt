# Research notes: hunting for agent collaboration

The completed-search ledger is [SEARCH_LOG.md](SEARCH_LOG.md): loops 1–28,
retained queries, candidate links, errors, and unresolved gaps. The next method
is [loop 29](PLAN.md#loop-29-join-two-independently-operated-artifacts-by-exact-reuse).
Entries below preserve the interpretation made during each search. Some used
overbroad exclusions; the corrected plan and ledger explain which leads merit
a narrower recheck. None has been promoted to a confirmed finding.

**Loop 18 correction:** the zero-hit archive searches in loops 1 and 6 were
broken by over-escaped regexes. Their negative conclusions are withdrawn.
Corrected May 28 queries alone found 120 phrase-matching events and 39 events
matching a Gist link plus agent language—not 159 collaboration cases. Loop 20
also retained a concrete external review → patch → confirmation lead in
[ECC #2161](https://github.com/affaan-m/ECC/pull/2161), with exact-run agent
provenance and independence still unresolved. See the new entries below.

`starter.txt` points at a useful pattern: agents may leave messages, task lists,
results, or rules in public GitHub space, then another agent may pick them up.
The cited incident is a lead, not the thing we are trying to rediscover.

The goal is to find odd, original public artifacts where an agent independently
finds and uses another agent's public state—outside already-written reports and
outside a planned two-agent workflow.

## What to look for

Good signals:

- an agent-ish account leaves a note for another agent or a future worker;
- a second account later edits the same task/result/state;
- somebody says they used, followed, continued, or preserved the earlier work;
- task-board-like files: `TASKS.md`, `STATUS.md`, `HANDOFF.md`, `FLAGS.md`,
  `mailbox`, `shared_state.json`, `coordination.md`.

Useful phrases to search:

```text
"other agents"          "future agents"          "another agent"
"next agent"            "parallel clone"         "shared quota"
"append rather than overwrite"  "don't delete"       "claim this task"
"waiting for peer"      "leave result"           "preserve state"
```

Search combinations rather than one word at a time—for example, `"next agent"`
plus `handoff`, `result`, `append`, or `task`.

## Where to hunt

1. **GH Archive**, May 1–September 22, 2026. This is the main lead source
   because it can point to public GitHub activity after the live page changes
   or disappears. Use it in 20-minute, question-driven searches—not broad
   calendar batches. Focus on issue comments, issues, PRs, reviews, pushes,
   releases, and wikis.
2. **Live GitHub** for commit history, issues, PRs, discussions, forks, and
   current file search. GitHub Code Search supports exact phrases, regex, and
   path filters: [docs](https://docs.github.com/en/search-github/github-code-search/understanding-github-code-search-syntax).
3. **Archives** after finding a specific repo, account, URL, or filename:
   Software Heritage, Wayback, Common Crawl, forks, and mirrors.
4. **Exa** last, to find similarly worded material, mirrors, and discussion of
   a promising artifact. It helps expand leads; it does not prove a claim.

## Fast reality check

Use three labels instead of a long proof framework:

| Label | Meaning |
| --- | --- |
| Interesting | A coordination-looking artifact, but only one actor so far |
| Probably real | Two accounts interact with the same handoff/state in time order |
| Good enough | The second account clearly uses or responds to the first actor's work |

Do not overthink model identity. Call it cross-account or independent-agent
collaboration unless there is an obvious hard link to a particular evaluation
or model.

## Eliminate planned collaboration early

**Updated reading:** the exclusions below record our early screening approach.
A workflow, citation, shared app product, or intervening human comment alone
does not establish a planned encounter. Use the corrected rules in `PLAN.md`:
identify a shared operator, prearranged assignment, or human instruction that
explains the specific action. The catalogue lead's commit name also does not
verify GitHub App authorship; see `SEARCH_LOG.md` for the attribution gap.

The target is not “two agents did work.” It is an **unplanned encounter**:
agent B finds something agent A left in a public place and changes course
because of it, without a shared person or workflow explicitly passing the baton.

Reject a candidate when any of these are visible:

- the same GitHub account, GitHub App, organization, repository owner, or
  workflow owns both agents;
- workflow YAML, a dispatcher, a queue, a task claim, a shared database, or a
  documented handoff route tells B to work after A;
- a human comment, assignment, review request, mention, or approval sits
  between A's artifact and B's action;
- it is a demo, evaluation fixture, agent framework, protocol, or repository
  designed to showcase multi-agent work;
- A and B are plainly roles in one product pipeline, even if they use different
  bot accounts or model names.

These are useful calibration examples, but not findings.

The strongest positive clues are the opposite:

- A leaves an artifact in an open, persistent place not obviously addressed to
  B: a public repo, Gist, issue, package metadata, forum post, release note, or
  similar public state.
- B belongs to a different owner/ecosystem and has no visible shared workflow
  or task route with A.
- B's next action happens after the artifact exists and refers to it, copies a
  distinctive result, follows an instruction, or otherwise changes behavior in
  a way that would be hard to explain without seeing it.
- No human event bridges A to B. A human can have started either agent earlier;
  they cannot be the visible handoff mechanism.
- Best case: B leaves a result that A or a third independent agent later uses.

This is a high bar on purpose. “No shared owner is visible” is not proof that
there is no shared owner; call such cases **possible independent collaboration**
unless the causal link is unusually clear.

## Basic precautions

- Never try a token or credential; redact it and move on.
- Save URLs, timestamps, screenshots/text, and a hash for anything interesting.
- Keep a quick reject list so we do not keep rediscovering ordinary open-source
  collaboration, human-written templates, or bot spam.

## Search log

### Loop 1 — 2026-09-22

**Question:** Are there literal public handoffs between distinct accounts in the
starter's target period?

- GH Archive query: 2026-05-01 through 2026-09-22; issue comments, issues,
  PRs, PR review comments, pushes, releases, and wikis; exact family `future
  agent`, `next agent`, `another agent`, and `other agent`.
- Original result: **0 hits, invalidated by loop 18.** The executed regex was
  over-escaped; this did not test the intended phrase family. Do not infer
  rarity, narrow wording, or absent archive coverage from this result.
- Exa expansion: 6 behavior-level searches / 60 source results. The dominant
  result class is intentionally built agent-handoff infrastructure, not agents
  independently discovering another actor's work.

One direct artifact is worth keeping as a calibration example, but not as the
target discovery: [self-evolving/repo PR #131](https://github.com/self-evolving/repo/pull/131).
Its public timeline shows `sepo-agent-app[bot]` posting an `implement → review`
handoff, a review synthesis labelled “Claude and Codex,” then a `review →
fix-pr` handoff and fixes. The raw activity is real and easy to inspect, but it
is a deliberately configured workflow: one bot account posts the visible
handoffs and a human requested the review. Marked **reject for this hunt**—good
evidence that agent collaboration systems exist, not a new case of independent
agents encountering each other.

**Next query:** look for indirect behavior rather than agent vocabulary: a task
claim / status update by account A followed by a different bot or agent-labelled
account modifying the named task, PR, issue, or state file. Use known shared
artifact terms (`claim`, `lease`, `owner`, `status`, `result`) only when paired
with a temporal cross-account join.

### Quick follow-up — 2026-09-22

Checked [MervinPraison/PraisonAI issue #2251](https://github.com/MervinPraison/PraisonAI/issues/2251), surfaced by the cross-account Exa query. It documents an intended Claude-created-PR → CodeRabbit/Qodo/Copilot → Claude review chain and why a trigger failed. The visible response is from `praisonai-triage-agent[bot]`; the issue describes the rest of the chain, but does not show a second independently acting agent consuming a shared artifact.

Marked **reject for this hunt**. It is useful noise calibration: repositories
that advertise multi-agent pipelines will dominate a semantic search, while the
target is an observed interaction rather than a design or a failed workflow.

### Loop 2 — useful calibration, not the target

**Candidate:** [max-sixty/tend #627](https://github.com/max-sixty/tend/issues/627)
— **reject for independent-collaboration hunt**.

This is a public, cross-repository handoff between two distinct bot accounts:
`prql-bot` (working in `PRQL/prql`) and `tend-agent` (working on the upstream
`max-sixty/tend` project).

| Time (UTC) | What happened |
| --- | --- |
| 2026-05-27 12:26 | `prql-bot` opened PRQL/prql [#5959](https://github.com/PRQL/prql/pull/5959) to fix a failed test run. |
| 2026-05-27 12:26 | The same bot opened [#5960](https://github.com/PRQL/prql/pull/5960) four seconds after its final duplicate check missed #5959; it later closed #5960 as a duplicate. |
| 2026-05-28 09:11 | `prql-bot` opened upstream [tend #627](https://github.com/max-sixty/tend/issues/627) with the concrete timeline and a proposed explanation: two independently triggered agent workflows raced on one failed run. |
| 2026-05-28 09:14 | `tend-agent` replied after checking the upstream generator, confirmed the two workflows did not share a concurrency key, and narrowed the tradeoffs. |
| 2026-05-28 14:35 | After maintainer direction, `tend-agent` opened [tend #629](https://github.com/max-sixty/tend/issues/629), carrying the `prql-bot` diagnosis forward into a durable-failure tracking proposal. |
| 2026-06-05 07:09 | After a second maintainer direction, `tend-agent` opened [tend PR #659](https://github.com/max-sixty/tend/pull/659), implementing that proposal. The PR merged the same day. |

Why this is still useful: one bot's real production failure and diagnosis
changed a second bot's upstream work through a public issue. It is stronger than
a README claiming agents *could* collaborate, and shows the kind of event trail
we need to inspect.

Why it does **not** qualify: this is human-gated and part of an intentionally
integrated ecosystem. The maintainer chose the design and explicitly asked for
the follow-on issue and implementation; that human instruction is the handoff.
Do not call it independent, cross-model, or cross-provider collaboration.

Novelty check: an exact Exa search for the account names and issue number
returned the GitHub thread, follow-up issue, and related commits, but no
independent report about this interaction in its first ten results. Keep the
label **not found in this quick coverage check**, rather than claiming it is
unknown everywhere.

**Next query:** search for an agent-created public artifact with no explicit
addressee, then look for an unrelated account that later references or reuses
it. Start at boundaries between unrelated repositories, package ecosystems,
Gists, forums, or releases—not issue/PR handoff workflows.

### Loop 3 — unaddressed-artifact search, null

Ran 4 Exa searches / 40 source results for agent-created public Gists, files,
release material, and unaddressed internet artifacts that another unrelated
agent later used. Nearly all results were solo agent writing, agent-framework
documentation, or published evaluation material.

Checked the most plausible hit, [“No Handshake Required”](https://gist.github.com/matt82198/8e86cbd9e6d92ab791cb5c16f8c892cc), directly. It has zero public comments and
no public forks. GitHub Code Search for its distinctive title phrase found only
the owner’s own website and test repositories—not a second actor using it.
Marked **reject: no consumer**.

This changed the tactic: semantic search can find artifacts, but it is a poor
way to discover the hidden *artifact → consumer* edge. The next loop should
start with a small batch of public, agent-authored, unaddressed artifacts; take
one distinctive 8–15 word fragment from each; then search GitHub code, issues,
PRs, Gists, archives, and web indexes for reuse by a different owner. Only
investigate the graph around an actual reuse hit.

### Loop 4 — exact-fragment probe, null

Seeded 3 more Exa searches / 30 results for unaddressed agent-looking public
artifacts, then ran GitHub Code Search for the starter’s coordination phrases.
The result was almost entirely agent-framework material, `AGENTS.md` files,
templates, and documented task systems. `for future agents` alone produced
19,136 current-code hits, so it is not a useful discovery phrase; the unique
starter phrase `zero cost to you huge help to others` produced none. One broad
query (`if you are another agent`) returned a GitHub search shard failure and
is not treated as evidence.

No artifact → unrelated-consumer edge found. Future reuse checks must use an
unusual fragment lifted from one identified artifact, not generic agent
vocabulary. This is the difference between finding thousands of people who
*planned* for agents and finding an agent that actually encountered another
agent’s state.

### Loop 5 — exact reuse found, then rejected

Used three specific public Gists as seeds, lifted distinctive phrases, then ran
three Exa reuse searches / 15 source results and three GitHub Code searches.
One exact cross-owner reuse appeared:

- The Claude `HELLO.md` text in [this public Gist](https://gist.github.com/parashararunkumar-gif/ad7924f1e169a83af6e91673972baf05) is copied in full into
  [`JayGarland/llm-agent-experiments`](https://github.com/JayGarland/llm-agent-experiments/blob/base/docs/references/karpathy-hello-reference.md).

Marked **reject: deliberate human curation**. The target repository describes
itself as a “Karpathy Version A” manual experiment framework and names the file
`karpathy-hello-reference.md`; the copy is a source/reference document, not an
agent discovering and using a stranger’s state. This is still a useful method
check: high-entropy fragments can reveal exact artifact reuse, but every reuse
must be screened for citation, fork/reference framing, and human-curated
experiments before it becomes a candidate.

### Five-loop batch — loops 6–10 — 2026-09-22

No qualifying independent case. The batch was useful because it removed a few
more attractive-looking false positives and made the search filter sharper.

| Loop | Probe | Result |
| --- | --- | --- |
| 6 | GH Archive scan for Gist links plus agent-language in the target event types, full target period | Original zero invalidated in loop 18: over-escaped URL regex. The claim that the archive lacks usable Gist-link events is withdrawn. |
| 7 | GitHub PRs that cite an external, agent-looking audit Gist | Rejected the [ClankOS audit Gist](https://gist.github.com/ClankOS/61003f54ed834fdbc9be72fe95a314fa) trail: downstream PR text identifies an `AIBTC fix-PR bounty reference`, so the apparent cross-owner action is a campaign/task mechanism, not an encounter. |
| 8 | Bounded GitHub search for Gist links near `[codex]`, `[claude]`, and `[gpt]` labels | No kept candidate. The inspectable hits were labels, human-created requests, references, or known planned systems—not a second agent reacting to an unaddressed artifact. |
| 9 | Bounded bot-authored GitHub issues/PRs containing Gist links | No kept candidate. Top results were conventional automation (`dependabot`, `github-actions`) or bots operating inside their own configured repository workflow. Different account names did not create independence. |
| 10 | Exa, three behavior-level queries / 30 source results: independent public discovery; cross-agent Gist/audit use; public persistent artifact coordination | No kept candidate. Results split into solo/self-evolving agents, explicit role-handoff tools, and human-operated multi-agent teams. The most superficially relevant results advertised Git-backed or managed handoff systems, which are direct exclusions. |

Two examples capture the final exclusion rule well:

- [agent-context-store](https://github.com/max9159/agent-context-store) calls
  itself a Git-backed handoff toolkit that passes artifacts between named SDLC
  roles. That is planned coordination by design.
- [NXTG's “repository as coordination layer” write-up](https://nxtg.ai/insights/repository-as-coordination-layer)
  describes two agents governing projects through Git, but it is a deliberately
  built shared coordination scheme, not unrelated agents stumbling across each
  other.

**Current conclusion:** passive search is finding many examples of collaboration
infrastructure but no verified case of independent public discovery and use.
The next high-yield loop should invert the search: collect a small set of
agent-authored, public, *unaddressed* artifacts first, then search each one
with a distinctive fragment for a later cross-owner reuse. Do not start from
the words “agent collaboration.”

### Four-loop batch — loops 11–14 — 2026-09-22

This batch tested the proposed “hidden activity” approach. It searched for a
public effect plus the **absence** of a visible workflow, human relay, common
owner, or citation path. Absence remained a filter, not proof.

| Loop | Probe | Result |
| --- | --- | --- |
| 11 | Exa seeds: 3 public-artifact searches / 30 results for durable autonomous-run reports without an addressee | Most seeds advertised their orchestration. Kept three only to test the negative-evidence filter; none qualifies as an unaddressed artifact. |
| 12 | Direct read of the three strongest-looking public run records | All rejected: [proof-ate-the-project](https://github.com/nelsonwerd/proof-ate-the-project) says its owner supplied a pipeline and 30 messages and had a second model audit it; [ops-log](https://github.com/alexbesp18/ops-log) calls itself a one-person agent fleet; [god-flight-recorder](https://github.com/parweb/god-flight-recorder) documents an orchestrator, shared directory, agent registry, and scheduled workflows. |
| 13 | Exact-fragment GitHub Code Search on the seed reports | One cross-owner reuse appeared: [`Arnon-hs/open-source`](https://github.com/Arnon-hs/open-source/blob/main/misc/nelsonwerd-proof-ate-the-project.md) catalogued the `proof-ate-the-project` report. This is a real artifact → consumer edge, so it was checked rather than discarded on sight. |
| 14 | Negative-evidence audit of that reuse | **Near miss; do not count as collaboration.** The consumer entry says “Discovered from Hacker News,” and its 2026-09-05 commit is `chore(catalog): sync repos from AtlasRepo Scout` by `repo-scout[bot]`. There is no `.github/workflows` directory in the consumer repo and no visible human relay, but the action is generic catalog indexing, not a reaction to or use of the source agent’s work. The source itself is a human-designed/autopilot experiment. |

The near miss is instructive. A hidden or external runner can leave no local
workflow trace, yet that alone does not turn a bot’s routine ingestion into
agent collaboration. Keep this class as **independent public discovery,
non-collaborative** until the consumer does something semantically specific
because of the producer’s result—adopts a recommendation, fixes a reported
fault, extends a design, or leaves a result for the producer/third party.

### Three-loop batch — loops 15–17 — 2026-09-22

This batch tested the hypothesis that agents hiding behind ordinary collaborator
accounts would be discoverable through cross-project causality alone.

| Loop | Probe | Result |
| --- | --- | --- |
| 15 | Exa, 3 behavior-level searches / 30 results for cross-project adoption, remediation, and automated changes driven by an external public artifact | No candidate survived. Results were mainly ordinary maintenance, explicit autonomous-agent tools, and planned review/repair systems. A public external link by itself does not establish that an agent consumed it. |
| 16 | Three bounded GitHub PR/issue searches for ordinary-looking external-source adoption (`inspired by`, `based on`, `discovered from`) | The results demonstrated the attribution gap but supplied no agent evidence. GitHub exposes account names, not whether the human-looking author used an autonomous runner. Do not relabel such accounts as automation on timing or prose alone. |
| 17 | Direct provenance audit of the one visible bot result: [AgentsLoop/OhMyGithub PR #56](https://github.com/AgentsLoop/OhMyGithub/pull/56) | Rejected as planned. Its body says “Automated implementation requested in comment,” preserves the initiating `/oc` command, and the repository contains OpenCode workflow files. The referenced external project is a user-specified design source, not a discovered agent artifact. |

**Refinement:** use **unattributed action** for an ordinary-looking account
whose execution method cannot be known from public evidence. Reserve
**unattributed automation** for a visible automated action (for example, an
opaque GitHub App or machine-patterned external runner) whose model/operator is
unknown. Neither label is evidence of collaboration. A finding still needs the
artifact → specific dependent action edge.

### Loop 18 — retrieval check found two broken searches

**Result:** the archive nulls in loops 1 and 6 are invalid. Recovered job SQL
shows doubled backslashes inside raw regex strings. A no-table positive-control
query returns false for both original patterns and true for both corrected
patterns on simple known-matching inputs. The date suffix bounds were not the
problem. Exact original and corrected SQL is retained in `queries/`; job IDs
and command details are in [SEARCH_LOG.md](SEARCH_LOG.md#loop-18-retrieval-validation-and-regex-repair).

A corrected scan of **2026-05-28 only**, across the seven selected event types,
returned 3,129,457 events, including 120 phrase matches, 61 Gist-link matches,
and 39 Gist-link-plus-agent-language matches. These are event/payload counts,
not distinct incidents or evidence of independent collaboration. Categories
overlap; embedded parent issue text can cause a match. The first 15 matches
include ordinary human-directed work, such as
[simonw's explicit Codex instruction](https://github.com/simonw/datasette/pull/2749#issuecomment-4559735844).
The full 145-day corrected scan has **not** been rerun.

Separate known-event checks also found a coverage problem:

| Live artifact | Daily BigQuery result | Corresponding raw archive hours |
| --- | --- | --- |
| [self-evolving #131](https://github.com/self-evolving/repo/pull/131), May 4 | Opened and labeled events; no PR body | Same two events, metadata only |
| [tend #627](https://github.com/max-sixty/tend/issues/627), May 28 | No matching item event | None in hours 09 and 10 UTC |
| [OhMyGithub #56](https://github.com/AgentsLoop/OhMyGithub/pull/56), August 25 | No matching item event | None in hours 03 and 04 UTC |

All three exist on live GitHub. These deliberately selected controls do not
estimate general archive coverage. Missing events and fields are a separate
limitation from the regex bug. In the May 28 sample there were issue/comment
bodies, but zero populated PR bodies under the tested field.

**Next use:** validate a query against positive controls before trusting a
null; use archive hits for discovery and live GitHub for actual conversations.

### Loop 19 — follow disclosed agents outside their home projects

Ran three Exa searches (20 requested result slots), then three bounded GitHub
account searches. Inspected 51 listed records: 11 Patbby, 20 of 37 prql-bot
matches, and 20 of 220 gaurav0107 matches. These are account search results,
not counts of autonomous contributions; the last query also includes some
own-project activity. Five encounters received closer inspection.

Identity anchors:

- [Patbby's profile README](https://github.com/Patbby/Patbby/tree/6b82cb64e508069861bb7ede05f81f506c248711)
  claims autonomous OpenClaw operation, periodic discovery, and AI authorship
  of its code, PRs, and comments. It is an operator claim, not a run transcript.
- [PRQL's tend configuration](https://github.com/PRQL/prql/blob/main/.config/tend.yaml)
  names `prql-bot`; public tracking reports link actions to agent runs.
- [Superhuman's README](https://github.com/gaurav0107/superhuman/tree/93d35c6cf641aa89c740ecee45dc6a46705b73ee)
  describes autonomous issue selection and review handling and explicitly
  lists ECC #2161 among its contributions. This August snapshot is a
  retrospective claim about the June PR, not contemporaneous execution proof.
  The same ordinary GitHub account can mix human and agent activity.

| Encounter | Observation | Decision |
| --- | --- | --- |
| [Patbby → hadamard #10](https://github.com/DeconBear/hadamard/pull/10) | Agent-disclosed author; owner later says main already fixed the problem and closes it | Park: no agent provenance for the responder, no demonstrated adoption of this patch |
| [prql-bot → tend #384](https://github.com/max-sixty/tend/issues/384) | Body traces upstream filing to a maintainer's request | Human-directed handoff |
| [prql-bot → tend #665](https://github.com/max-sixty/tend/issues/665) | Body references maintainer direction in PRQL #5983 | Human-directed, same ecosystem |
| [gaurav0107 → Godot #121806](https://github.com/godotengine/godot/pull/121806) | PR explicitly discloses agent selection, diagnosis, and authorship | Agent contribution, but no second agent established; closed draft |
| [gaurav0107 → ECC #2161](https://github.com/affaan-m/ECC/pull/2161) | Superhuman claims the PR; CodeRabbit and Cubic feedback is followed by a targeted patch and acknowledgments | Keep: concrete dependency, exact-run autonomy and operator relationship unresolved |

**Useful change in method:** profile and project disclosures find agent work
behind ordinary usernames. Superhuman also documents human-style commit
attribution without AI coauthor trailers, so those trailers are not a reliable
selection filter. This does not demonstrate that any particular contributor
is hiding, or that all their activity is autonomous.

### Loop 20 — completed upstream round trip; retained a separate encounter

#### tend/PRQL: return leg found, independence ruled out

The old trace stopped at the upstream fix. It now reaches back to the original
project, with the actual cleanup diff checked. All times below are UTC.

| Time | Public event |
| --- | --- |
| May 28 03:15:45 | `max-sixty` [requests the original diagnosis](https://github.com/PRQL/prql/pull/5960#issuecomment-4560547751) |
| May 28 03:21:14 | `prql-bot` [posts the diagnosis](https://github.com/PRQL/prql/pull/5960#issuecomment-4560579258) |
| May 28 09:11:32 | `prql-bot` opens upstream [tend #627](https://github.com/max-sixty/tend/issues/627) |
| May 28 09:14:48 | `tend-agent` [checks the code and responds](https://github.com/max-sixty/tend/issues/627#issuecomment-4562475709) |
| May 28 14:23:56 | `max-sixty` [chooses the direction](https://github.com/max-sixty/tend/issues/627#issuecomment-4565014219); later requests follow-up #629 |
| June 5 07:05:56 | `max-sixty` [explicitly requests implementation](https://github.com/max-sixty/tend/issues/629#issuecomment-4629048980) |
| June 5 07:09:45 | `tend-agent` opens [fix #659](https://github.com/max-sixty/tend/pull/659); `max-sixty` merges it at 13:47:41 |
| August 2 17:16:04 | `prql-bot` opens return [PRQL #6124](https://github.com/PRQL/prql/pull/6124), citing #627 and the shipped upstream tracking fix; `max-sixty` merges at 23:27:25 |

The return patch removes the old failure-issue job (28 lines) and its template
(6 lines), rather than just mentioning the upstream work. It is a real
diagnosis → upstream fix → downstream adoption chain.

**Reject as independent:** the same human requested the originating diagnosis,
directed the upstream design/implementation, and merged both upstream and
downstream changes. This is stronger evidence than merely finding workflows.
The initial bot-to-bot response still happened, 3 minutes 16 seconds after the
issue; it just does not establish separately operated agents meeting by chance.

The [public run-summary comment](https://github.com/PRQL/prql/issues/5852#issuecomment-4553027143)
also says upstream filing used a standing exception for agent-equipped targets.
Its May 29 entry says the bot read the upstream response but did not perform
hinted downstream cleanup because the cross-repository discussion did not
authorize that work. This is an agent-written summary, not a raw transcript;
the comment was created May 27 and updated through May 31.

#### ECC #2161: concrete feedback loop, still a lead

This is the best new lead from the batch. The PR addresses
[issue #2078](https://github.com/affaan-m/ECC/issues/2078), whose author has no
agent provenance in the inspected sources. Superhuman's README explicitly
claims the resulting PR. On **June 5 UTC**, the public trail shows:

| Time | Dependent action |
| --- | --- |
| 19:34:29 | `gaurav0107` opens [PR #2161](https://github.com/affaan-m/ECC/pull/2161) from their fork |
| 19:54:34 | [CodeRabbit review](https://github.com/affaan-m/ECC/pull/2161#discussion_r3365022696) identifies warning-state behavior needing a change |
| 19:55:49 | [Cubic review](https://github.com/affaan-m/ECC/pull/2161#discussion_r3365028183) also posts the same concern; independent reasoning is not established |
| 20:21:51 | [Commit 9e5a59b](https://github.com/affaan-m/ECC/commit/9e5a59be58edd04c000853c92f5211bd832eb08a) cites both reviewers, changes the relevant behavior, and adds a regression test |
| 20:22:13 | [Author acknowledgment](https://github.com/affaan-m/ECC/pull/2161#issuecomment-4635218267) reports the correction |
| 20:22:26 | [Cubic confirmation](https://github.com/affaan-m/ECC/pull/2161#issuecomment-4635219850) |
| 20:22:33 | [CodeRabbit confirmation](https://github.com/affaan-m/ECC/pull/2161#issuecomment-4635220707) |

`affaan-m` merged the PR on June 7 at 05:01:30 UTC. We inspected the review
comments, issue comments, commits, and corrective diff. No human handoff was
visible between the reviews and corrective commit in those comments. That
does not exclude a private instruction or a human making the commit.

**Keep as possible cross-operator agent encounter, not a confirmed discovery.**
The code dependency is concrete. The contribution is agent-attributed by its
operator. But the public record inspected does not establish that the agent
autonomously handled this exact review, how it selected the original issue,
or whether the contributor and reviewer setup had independent operators and
no prearranged collaboration. Automated PR review is a routine explanation;
the existence of review apps alone is not the disqualifier. No novelty search
has been run for this specific exchange.

**Next:** loop 21 should look for the actual Superhuman run or public session
record behind #2161. It would settle more than another generic phrase search.

### Loop 21 — Superhuman can handle reviews; this run remains private

This loop asked one narrow question: does public material show that the
Superhuman agent selected [ECC issue #2078](https://github.com/affaan-m/ECC/issues/2078)
and autonomously handled the review feedback on [PR #2161](https://github.com/affaan-m/ECC/pull/2161)?

The answer is **not from the public record inspected**. The latest Superhuman
commit before the PR was [v0.5.0](https://github.com/gaurav0107/superhuman/commit/d705965c3c0766c3319ed57054f92b2bbdceca00),
published May 24. It already defines `resolve-comments`: it fetches inline and
top-level PR reviews, treats their bodies as untrusted data, classifies them,
and dispatches actionable findings to a builder. Its orchestrator has an
issue-selection phase, but its `/contribute owner/repo issue-number` form also
allows an exact issue supplied by a caller. That means the architecture supports
both autonomous selection and human-supplied target selection; it does not
tell us which happened for #2078.

The same historical release makes the key provenance gap explicit:

| Run artifact | Location specified by the release |
| --- | --- |
| Current contribution, reviewer notes, and phase telemetry | `~/.superhuman/repos/<slug>/` |
| Outcomes and loop history | `~/.superhuman/global/` |
| Terminal run summary | `~/.superhuman/repos/<slug>/run_summary.json` |
| Contribution dashboard | Local-only reader; it makes no external API calls |

So the project documents an agent mechanism compatible with the observed
feedback → patch sequence, but it does not publish the record that would bind
that mechanism to this PR. The later Superhuman change that adds default
PR-body attribution landed July 4—after the June 5 PR—and cannot establish
what happened earlier. Its May-era contributor prompt also pins ordinary
`gaurav0107` commit identity and prohibits AI coauthor trailers. Git metadata
therefore cannot distinguish a human-created #2161 commit from this agent's
output.

Four targeted Exa searches reviewed 36 source slots and fetched four primary
pages; GitHub code search for `ECC repo:gaurav0107/superhuman` returned zero.
Those checks found framework documentation and later retrospective claims, not
a June execution log. This is a scoped search result, not proof that no log
exists anywhere. Queries, source anchors, and result metadata are retained in
[the loop 21 evidence snapshot](evidence/2026-09-22-loop-21.json).

**Decision:** downgrade ECC #2161 from “possible cross-operator agent encounter”
to **agent-attributed outcome with a public automated-review feedback loop**.
The automated reviewers demonstrably affected the patch, but the contributor's
autonomy for the specific work, source-selection route, and operator
independence are not public. It is useful calibration for hidden activity, not
the original independent-collaboration finding.

**Next:** use loop 22 on a distinctive public artifact where a second,
cross-owner action depends on a high-entropy detail. That can prove artifact
consumption without relying on an actor's account metadata.

### Loop 22 — a real agent report → response, but the responder is unattributed

This pass seeded on [Patbby's public autonomous-agent disclosure](https://github.com/Patbby/Patbby)
and the distinctive ActoviqBridgeSession race report in
[Hadamard issue #8](https://github.com/DeconBear/hadamard/issues/8). The issue
was opened June 18 at 17:56:22 UTC. Two and a half minutes later, Patbby opened
[PR #10](https://github.com/DeconBear/hadamard/pull/10) from the separate
Patbby/actoviq-agent-sdk fork to fix it.

The source did affect later work. On June 28, DeconBear committed a broader
[multi-turn session fix](https://github.com/DeconBear/hadamard/commit/54ae654a98904aacdf7b3266fcab1f8c4b78b83a).
On July 28, the owner explicitly said current main synchronously set the
started state and “covers the race described in #8,” then closed #8 and #10
as superseded. The response is more substantial than a generic acknowledgment.

| Link in the chain | What public evidence establishes |
| --- | --- |
| Patbby → issue #8 | Agent-disclosed account reports a specific failure |
| Patbby → PR #10 | Same account proposes a source-level repair from a fork |
| DeconBear → main commit | Different account makes a later, more complete repair |
| Owner's closure comments | Explicitly connect main's behavior to the race in #8 |

This still misses the target. The follow-up is in the **same project** where the
report was filed, not a cross-project consumer discovering a public artifact.
DeconBear is a normal GitHub user with no reviewed public autonomous-run
provenance. The main commit has a Claude Fable 5 coauthor trailer, which
supports AI assistance but does not establish that a second independently
operated agent chose or made the change. Hadamard describes an agent platform;
product capability also does not identify the actor behind this specific commit.

Three source-specific Exa searches plus one identity follow-up reviewed 29
source slots. A GitHub code search for ActoviqBridgeSession returned zero;
a later-commit search returned one match, the same Hadamard repository. No
external consumer surfaced. Full queries and primary-source anchors are in
[the loop 22 evidence snapshot](evidence/2026-09-22-loop-22.json).

**Decision:** retain as a clear **agent-reported bug → AI-assisted or
unattributed maintainer fix**. It is not independent agent collaboration and
does not establish hidden autonomy. The useful lesson is structural: direct
response in the producer's target repository is common and easy to observe;
loop 23 must seek an external consumer with its own automation provenance.

### Loop 23 — channel bug fingerprint did not travel

[Patbby](https://github.com/Patbby/Patbby) publicly identifies its account as
an autonomous OpenClaw agent. On June 9 it opened
[Johnixr/claude-code-wechat-channel #18](https://github.com/Johnixr/claude-code-wechat-channel/issues/18):
the WeChat bridge received messages, but Claude Code 2.1.169 ignored
`notifications/claude/channel` and reported “Channels are not currently
available.” Those details supplied the fingerprint for this pass.

Three Exa searches requested 21 results. GitHub issue search found no later
issue or PR citing the source URL. A version-plus-notification search found
four issues; the closest later one, [Anthropic #67364](https://github.com/anthropics/claude-code/issues/67364),
describes channel turns that **do run** but fail to write a session transcript
in versions 2.1.172/2.1.173. It cites different prior persistence bugs and
does not cite Patbby's report. Similar words do not make it a consumer.

The notification method was also a poor fingerprint on its own: GitHub code
search returned 6,912 results. A
[March 22 design spec](https://github.com/swim2sun/claude-code-wechat/commit/6ec76cf41cbc5390e0bb72c18d2f9d9e82684dde)
already cited Johnixr's bridge and used that method. The original project had
[an earlier channel-drop issue](https://github.com/Johnixr/claude-code-wechat-channel/issues/15)
on May 3. One different-project document citing Johnixr's bridge was
[committed May 14](https://github.com/LuoDi-Nate/financial-management/commit/746908270cc5008730265d9ee8dc439b43796ae7),
before Patbby's issue, and its commit says a user requested the research.

**Result:** no later cross-project dependent action or second agent provenance
was found in this bounded pass. This is a scoped null, not evidence that no one
read the issue. The exact searches, counts, chronology, and retried shell
quoting error are preserved in [loop 23 evidence](evidence/2026-09-22-loop-23.json)
and [SEARCH_LOG.md](SEARCH_LOG.md#loop-23-channel-notification-fingerprint).
Loop 24 returns to the corrected archive search that has not yet covered a
time slice beyond the loop 18 control day.

### Loop 24 — corrected archive scan works; sampled hits do not qualify

The corrected phrase and Gist-plus-agent predicates ran on May 27–29, using
the same May 28 day as loop 18's positive control. That day again returned
3,129,457 selected events, 120 phrase matches, and 39 Gist-plus-agent matches
in raw payloads. Across three days the totals were 9,449,306 events, 325
phrase matches, and 113 Gist-plus-agent matches. Extracting the event's own
comment/issue/PR body cut those last two counts to 153 and 41. This matters:
the archive payload can carry the parent issue's text into unrelated actions,
so raw matches are leads, not observations of a new conversation.

The body-match sample was capped at 80 rows and two per repository. Three
live checks were enough to expose different failure modes:

- A `khairagent` comment addressed a “fellow AI agent” on
  [x402 #2332](https://github.com/x402-foundation/x402/issues/2332#issuecomment-4554525857)
  in the archive. Its comment endpoint now returns 404 and the current issue
  page does not show it. Archive text alone does not establish a surviving
  exchange or a later action.
- [Recognition Without Arrest #2](https://github.com/ianymu/recognition-without-arrest/pull/2)
  has a genuine Gist → fixture-ingestion trail involving `waitdeadai` and
  `nvst18`, but the thread explicitly asks for permission and later records
  human sign-off. It is a coordinated cross-owner handoff, not an independent
  encounter. The cited Gist was later taken down by its contributor.
- On [Datasette #2749](https://github.com/simonw/datasette/pull/2749#issuecomment-4559735844),
  Simon Willison says he instructed Codex to run a Showboat SQL test and then
  chose not to fix the minor anomaly it found. This is direct human tool use.

**Result:** the archive correction is validated on this 72-hour slice, but no
qualifying independent-agent chain emerged from the three inspected hits.
This is not a negative conclusion about the unreviewed rows or full 145-day
window. The two capped BigQuery jobs, exact SQL, day counts, and live-check
links are in [SEARCH_LOG.md](SEARCH_LOG.md#loop-24-corrected-archive-scan-may-2729)
and [loop 24 evidence](evidence/2026-09-22-loop-24.json). Next, take one
clearly automated public report from the body hits and test for a later
different-owner action that depends on its distinctive content.

### Loop 25 — a bot-branded incident without an independent consumer

The seed, [academicOps #1406](https://github.com/nicsuzor/academicOps/issues/1406),
has an unusually precise failure: a freshly written daily note exists on the
local filesystem but `mcp__pkb__get_document` returns 404 until git sync and
server reindex complete. `botnicbot` opened it on May 27. That is a good
fingerprint for reuse, but the account is a GitHub `User` with bot branding,
not by itself proof of an autonomous run. The report also says a human
corrected the coordinator's false “note does not exist” answer. Producer
autonomy for this particular issue therefore remains unproven.

Three Exa queries and eleven GitHub searches looked for a later source URL,
distinctive method/phrase, or implementation in another repository. Exact
source-link queries returned zero indexed issues/PRs. The exact
`mcp__pkb__get_document` issue search returned only #1406 and same-project
#1407. Broad “daily note” + “reindex” queries returned many semantically
related but non-attributable hits; they cannot establish consumption.

The one later candidate worth opening was
[nicsuzor/mem PR #455](https://github.com/nicsuzor/mem/pull/455), merged June
25. It is a real indexing fix, but for a different failure: sync-disabled
daily notes were perpetually counted as stale and never cleared by reindex.
It neither cites #1406 nor has a different operator: `botnicbot` authored
both artifacts and both repositories are under `nicsuzor`. Its Claude Code
footer supports AI-assisted production, not independent discovery.

**Result:** no observed independent consumer in the bounded search. The
absence of indexed citations does not prove no one read the report. More
importantly, this seed was weaker than it looked: a bot-like handle and a
precise incident report were insufficient producer provenance. Loop 26 will
filter for separate ownership and a plausible external recipient *before*
spending its trace budget. Full query totals and limits are in
[SEARCH_LOG.md](SEARCH_LOG.md#loop-25-botnicbot-daily-note-reindex-report) and
[loop 25 evidence](evidence/2026-09-22-loop-25.json).

### Loops 26–27 — full-window discovery is done, but authorship matters

The first ownership-aware May 27–29 query returned 39 leads. It revealed two
common false positives: people linking **their own** Gists while commenting
in somebody else's repository, and automated reviewers citing third-party
docs/issues as background. One promising cross-owner link was
[Fullsend retro #1625](https://github.com/fullsend-ai/fullsend/issues/1625)
discussing a Konflux coding bot. That led to loop 28.

We then scanned the entire May 1–September 22 window under a 300-GB-per-job
cap. The initial query returned 1,062 eligible events, but it could attribute
an issue's text to a bot that merely changed a label. On
[OpenClaw #97588](https://github.com/openclaw/openclaw/issues/97588), for
example, `patelmm79` wrote the DarojaAI incident report; `clawsweeper[bot]`
later labeled it. The archive actor was real, but the authorship inference was
wrong.

The corrected query pairs each event's own body with its actual
comment/issue/PR author and avoids parent-body fallbacks. It returned **455
query-eligible events** and a top-120 ranked sample. The May 28 Fullsend
record survived as a live-checked positive control. This is a completed
full-window **discovery scan**, not a count of 455 collaborations and not a
comprehensive negative test: the predicates are narrow, only a sample was
read, and known archive gaps remain. Exact SQL, job IDs, and bytes are in
[SEARCH_LOG.md](SEARCH_LOG.md#loop-27-corrected-full-window-discovery-scan).

### Loop 28 — real agent chain, same platform

The full-window lead resolves into a concrete chain:

1. [Konflux #6507](https://github.com/konflux-ci/konflux-ci/pull/6507) was
   created by `konflux-ci-coder[bot]`; its footer names the Fullsend code
   agent. It leaked `.agentready/` working files into a code PR.
2. After a separate [Konflux PR #6090](https://github.com/konflux-ci/konflux-ci/pull/6090)
   closed May 28, `fullsend-ai-retro[bot]` opened
   [Fullsend #1625](https://github.com/fullsend-ai/fullsend/issues/1625),
   naming #6090 as its source and #6507 as the concrete failure example.
3. A [Fullsend triage bot](https://github.com/fullsend-ai/fullsend/issues/1625#issuecomment-4561282685)
   specified harness exclusions and a post-script safeguard.
4. `fullsend-ai-coder[bot]` opened
   [PR #1627](https://github.com/fullsend-ai/fullsend/pull/1627) minutes later,
   implemented that fix, and the PR merged June 8.

That is stronger public evidence of agent-to-agent *work* than most earlier
leads: the reported flaw changed the platform's code. It still fails our
independence test. [Fullsend PR #1021](https://github.com/fullsend-ai/fullsend/pull/1021),
merged before these events, defines coder, triage, and retro as dispatch
roles/apps of the same platform. Different bot names and repository owners
masked a shared operator and prearranged workflow.

**Current result:** no confirmed unplanned encounter between independently
operated agents. The useful advance is methodological: first verify the
*author of the matched body*, then trace an actual downstream change, then
check the operator behind each account. Exa's semantic provenance search
surfaced the Fullsend dispatch-role PR, which was decisive for this judgment.
The exact searches and selected evidence are in
[SEARCH_LOG.md](SEARCH_LOG.md#loop-28-complete-fullsend-chain-but-shared-orchestration)
and [the loops 26–28 snapshot](evidence/2026-09-22-loops-26-28.json).
